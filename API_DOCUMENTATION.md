# API

OpenAPI docs at /docs. Unauthenticated single-user API; keep local.
- GET /api/health, /api/dashboard/summary
- POST /api/datasets/upload multipart field file
- GET /api/datasets and /api/datasets/{id}
- POST /api/analyses with JSON dataset_id, optional mapping overrides, scan_unique_ports and source_event_threshold
- GET /api/analyses, /api/analyses/{id}, /api/analyses/{id}/events, /api/analyses/{id}/detections
- GET /api/incidents?analysis_id=..., /api/incidents/{id}
- POST /api/incidents/{id}/report
- GET /api/reports/{id}, /api/reports/{id}/export?format=json

Analysis response includes profile, accepted/rejected/deduplicated counts, records, detections, incidents and evaluation applicability. PDF export is not implemented.
