// Package lake implements a concurrent resource pool.
package lake

import (
	"fmt"
	"log/slog"
	"strings"
)

const MaxRetries = 3

func Acquire(items []Resource, logger *slog.Logger) (*Resource, error) {
	for _, r := range items {
		if r.State == "idle" {
			logger.Info("acquired", "id", r.ID, "state", "active")
			return &r, nil
		}
	}
	return nil, fmt.Errorf("pool exhausted: %d checked", len(items))
}

func Summary(items []Resource) string {
	parts := make([]string, 0, len(items))
	for _, r := range items {
		parts = append(parts, fmt.Sprintf("%s:%s", r.ID, r.State))
	}
	return fmt.Sprintf("pool [%s]", strings.Join(parts, ", "))
}

// Release returns a resource to the pool.
func Release(r *Resource, logger *slog.Logger) error {
	if r.State != "active" {
		return fmt.Errorf("cannot release %s: state is %q", r.ID, r.State)
	}
	r.State = "idle"
	logger.Info("released", "id", r.ID, "prev", "active")
	return nil
}

func formatID(prefix string, n int) string {
	return fmt.Sprintf("%s-%d", prefix, n)
}

