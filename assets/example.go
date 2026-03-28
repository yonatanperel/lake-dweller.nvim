// Package lake implements a concurrent resource pool.
package lake

import (
	"context"
	"fmt"
	"sync"
	"time"
)

const MaxRetries = 3

type State string

const (
	Idle    State = "idle"
	Active  State = "active"
	Closed  State = "closed"
)

type Resource[T any] struct {
	ID        string
	Value     T
	State     State
	Tags      map[string]bool
	CreatedAt time.Time
	ttl       time.Duration
}

func (r *Resource[T]) IsExpired() bool {
	return time.Since(r.CreatedAt) > r.ttl
}

// Pool manages a set of reusable resources.
type Pool[T any] struct {
	mu      sync.RWMutex
	items   []*Resource[T]
	factory func() (T, error)
	max     int
}

func NewPool[T any](max int, factory func() (T, error)) *Pool[T] {
	return &Pool[T]{items: make([]*Resource[T], 0, max), factory: factory, max: max}
}

func (p *Pool[T]) Acquire(ctx context.Context) (*Resource[T], error) {
	p.mu.Lock()
	defer p.mu.Unlock()

	for i, r := range p.items {
		if r.State == Idle && !r.IsExpired() {
			r.State = Active
			p.items = append(p.items[:i], p.items[i+1:]...)
			return r, nil
		}
	}

	if len(p.items) >= p.max {
		return nil, fmt.Errorf("pool exhausted: %d/%d in use", len(p.items), p.max)
	}

	val, err := p.factory()
	if err != nil {
		return nil, fmt.Errorf("create resource: %w", err)
	}

	return &Resource[T]{
		Value: val, State: Active, Tags: map[string]bool{"new": true},
		CreatedAt: time.Now(), ttl: 5 * time.Minute,
	}, nil
}

// Drain closes all idle resources and returns the count removed.
func (p *Pool[T]) Drain() int {
	p.mu.Lock()
	defer p.mu.Unlock()

	removed := 0
	active := make([]*Resource[T], 0)
	for _, r := range p.items {
		if r.State == Idle || r.IsExpired() {
			r.State = Closed
			removed++
		} else {
			active = append(active, r)
		}
	}
	p.items = active
	return removed
}
