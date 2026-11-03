# Security and privacy

Defensive log analysis only. No scanning, exploitation, automatic remediation, or model calls.

Uploads use generated UUID paths under backend/data and do not modify original source files. Formats are CSV, JSON, JSONL and JSON-lines LOG/TXT, capped at 100 MiB/500k rows. No arbitrary syslog parser. Content is treated as untrusted data and never executed. SQLite uses parameterized query values. Local upload/database directory is git-ignored.

No model provider is active; no dataset contents leave the machine. CORS is limited to localhost frontend origins. There is no authentication, authorization, encryption at rest, retention/deletion UI, audit table, rate limiting, or production hardening. Anyone with local account access can read stored files. Do not expose the API to untrusted networks.

LLM integration would require explicit transfer consent, isolated prompts, bounded context/output, schema/reference validation, no tools or secrets, and safe fallback. Never claim prompt injection immunity.
