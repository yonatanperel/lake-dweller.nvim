-- User schema, seed data, and common queries
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    active BOOLEAN DEFAULT TRUE
);

CREATE INDEX idx_users_email ON users(email);

INSERT INTO users (name, email, active)
VALUES
    ('Alice Johnson', 'alice@example.com', TRUE),
    ('Bob Smith', 'bob@example.com', FALSE);

SELECT
    u.id,
    u.name,
    COUNT(o.id) AS order_count,
    SUM(o.total) AS total_spent
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
WHERE u.active = TRUE
  AND u.created_at > '2024-01-01'
GROUP BY u.id, u.name
HAVING COUNT(o.id) > 5
ORDER BY total_spent DESC
LIMIT 10;

-- Deactivate users with no recent sessions
UPDATE users
SET active = FALSE
WHERE id IN (
    SELECT user_id
    FROM sessions
    WHERE last_seen < NOW() - INTERVAL '90 days'
);
