# AtlasQueue Architecture — v0

For now, AtlasQueue consists of:

- A single HTTP server (`atlasqueue-server`) exposing:
  - `GET /healthz` for health checks
  - `GET /` as a basic landing endpoint

Future components:

- Job enqueue API
- Worker processes
- Scheduler with leader election
- Postgres-backed job storage
- Metrics and tracing
