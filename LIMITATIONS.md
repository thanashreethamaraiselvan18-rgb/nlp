# Limitations

- The supplied dataset contains only benign-labeled traffic; recall/general attack discrimination cannot be evaluated. The observed 1.57% false-positive event rate is exploratory, in-sample, and uses initial heuristic thresholds.
- FastAPI absent in authoring runtime; API was not launched.
- No LLM adapter; deterministic fallback only.
- No authentication, ownership, rate limits, deletion/retention UI, or production hardening.
- SQLite stores JSON blobs without migrations. Analysis materializes data in memory.
- LOG/TXT parser supports JSON Lines only; Excel, archives, PCAP and vendor formats unsupported.
- Candidate mappings require review; dashboard mapping editor not implemented.
- Rules cover port diversity, high source count and failure status only. No time-window or ML detector.
- Correlation only merges findings sharing event rows.
- Report verifies cited IDs but not every numerical or semantic claim.
- JSON export only; no PDF or background progress.
- No supervised evaluation, human annotation, independent split, or literature review.
- Frontend build, API integration and full security/E2E tests not run.

