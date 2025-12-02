CREATE TABLE jobs (
    id TEXT PRIMARY KEY,
    queue TEXT NOT NULL,
    payload JSONB NOT NULL,
    status TEXT NOT NULL,
    attempts INT DEFAULT 0,
    max_attempts INT DEFAULT 3,
    available_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    locked_by TEXT,
    locked_until TIMESTAMP WITH TIME ZONE,
    last_error TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);
