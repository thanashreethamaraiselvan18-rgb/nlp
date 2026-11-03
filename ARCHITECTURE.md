# Architecture

Dataset -> profile and field mapping -> validation and normalization -> transparent detection -> shared-event correlation -> bounded evidence -> deterministic fallback report -> reference validation -> SQLite -> FastAPI -> React dashboard.

Profile parsing streams through records, with caps of 100 MiB and 500k rows. Analysis currently materializes normalized data in memory. Derived events preserve the original row and one-based source record. Invalid present timestamps, IPs and ports are rejected with row diagnostics; exact normalized duplicates are counted.

Rules activate only when needed fields exist. Correlation requires overlapping event IDs; timestamps alone do not merge incidents. Reports select at most 50 supporting records. No model call is wired; ATT&CK remains not established.

SQLite stores metadata and analysis/report JSON payloads. Single-user local development only. The unauthenticated API must remain loopback-bound.
