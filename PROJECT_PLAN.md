# Project plan

## Completed
- Inspected workspace; no user datasets present.
- Implemented profiler, field mapper, validators, normalizer, source row traceability.
- Implemented heuristic detections, shared-event correlation, bounded evidence selection and checked deterministic report.
- Implemented FastAPI routes with SQLite persistence.
- Added dashboard source and project methodology/security documentation.

## Outstanding
User dataset profiling; local/hosted LLM adapter with consent; auth/ownership; PDF export; migrations; background jobs; optional ML; broader detection and correlation; frontend/API end-to-end and security tests; actual research evaluation and verified literature review.

| Acceptance | State |
|---|---|
| Inspect actual supplied data | Done: none found |
| Ingestion/normalization | Implemented |
| Detection/correlation | Limited heuristics implemented |
| Evidence report | Deterministic fallback + event-reference check |
| Persistence/dashboard/JSON export | Source implemented |
| LLM/PDF/auth/supervised metrics | Outstanding |
| Real dataset results | Pending user data |
