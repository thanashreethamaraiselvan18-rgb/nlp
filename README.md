# AI-Driven Threat Report Framework

Local defensive analysis for user-supplied network/security logs. The pipeline profiles files, maps fields, validates and normalizes records, detects heuristic patterns, groups findings with shared evidence, and generates deterministic reports with checked event references.

## Status
The user-uploaded Benign Traffic DATASET.csv is now profiled; see research/methodology/dataset_profile.md. The corrected run processed 32,606 rows and produced 21 heuristic findings across 18 incidents, all matching records labeled Benign Traffic. These are false-positive rule matches, not confirmed threats. No recall result is available because the data has no attack examples. LLM summarization is optional and OpenAI-compatible; when no endpoint is configured, deterministic summaries are used and no data leaves the machine. LLM calls send only selected incident facts and up to 20 cited source rows to the configured endpoint. Auth, PDF, background jobs, migrations, ML, and complete evaluation remain outstanding. Read LIMITATIONS.md.

## Optional LLM summaries

The report generator can use an OpenAI-compatible chat-completions endpoint. It sends data only when an endpoint and model are configured. For a local model server, set `THREAT_REPORT_LLM_BASE_URL` to its local `/v1` URL and `THREAT_REPORT_LLM_MODEL` to a model already installed there. For a hosted endpoint, also set `THREAT_REPORT_LLM_API_KEY` in the same PowerShell session before starting the API. Never commit or share API keys. Without configuration, the app uses deterministic summaries.

The model receives bounded incident facts, rule measurements, dataset-label assessment, and at most 20 cited source rows. It is instructed to treat log contents as untrusted data, avoid unsupported claims, and distinguish rule matches from confirmed attacks. Reports still require analyst review.

## Start
Requirements: Python 3.11+ and Node 20+.

PowerShell from root:
    py -3.11 -m venv .venv
    .venv\# AI-Driven Threat Report Framework

Local defensive analysis for user-supplied network/security logs. The pipeline profiles files, maps fields, validates and normalizes records, detects heuristic patterns, groups findings with shared evidence, and generates deterministic reports with checked event references.

## Status
The user-uploaded Benign Traffic DATASET.csv is now profiled; see research/methodology/dataset_profile.md. The corrected run processed 32,606 rows and produced 21 heuristic findings across 18 incidents, all matching records labeled Benign Traffic. These are false-positive rule matches, not confirmed threats. No recall result is available because the data has no attack examples. LLM summarization is optional and OpenAI-compatible; when no endpoint is configured, deterministic summaries are used and no data leaves the machine. LLM calls send only selected incident facts and up to 20 cited source rows to the configured endpoint. Auth, PDF, background jobs, migrations, ML, and complete evaluation remain outstanding. Read LIMITATIONS.md.

## Optional LLM summaries

The report generator can use an OpenAI-compatible chat-completions endpoint. It sends data only when an endpoint and model are configured. For a local model server, set `THREAT_REPORT_LLM_BASE_URL` to its local `/v1` URL and `THREAT_REPORT_LLM_MODEL` to a model already installed there. For a hosted endpoint, also set `THREAT_REPORT_LLM_API_KEY` in the same PowerShell session before starting the API. Never commit or share API keys. Without configuration, the app uses deterministic summaries.

The model receives bounded incident facts, rule measurements, dataset-label assessment, and at most 20 cited source rows. It is instructed to treat log contents as untrusted data, avoid unsupported claims, and distinguish rule matches from confirmed attacks. Reports still require analyst review.

## Start
Requirements: Python 3.11+ and Node 20+.

PowerShell from root:
    py -3.11 -m venv .venv
    .venv\Scripts\Activate.ps1
    python -m pip install -r backend\requirements.txt
    python -m uvicorn app.main:app --app-dir backend --reload --host 127.0.0.1 --port 8000

Second terminal:
    cd frontend
    npm install
    npm run dev

Open localhost:5173. API docs: localhost:8000/docs. The API binds to loopback; do not expose it publicly.

Upload CSV, JSON array/object, JSONL, or JSON-lines .log/.txt. Limits are 100 MiB and 500k rows. Arbitrary syslog, Excel, archives and PCAP are unsupported. Uploads and SQLite live in ignored backend/data. Original files are not modified.

Rules cover distinct destination ports, high source event count and repeated failed/denied statuses. These are heuristics, not calibrated compromise probabilities. Correlation requires shared event IDs.

## Checks
    python -m unittest discover -s backend\tests -v
    cd frontend
    npm install
    npm run build

Seven pure Python tests passed in the authoring environment. FastAPI was missing and frontend dependencies were not installed, so API launch and frontend build are unverified. See TEST_REPORT.md.

Use user-supplied data as primary source. See datasets/README.md, research/methodology/dataset_profile.md, RESEARCH_METHODOLOGY.md and research/paper/outline.md. No research experiment has run.



### Local FLAN-T5 option

The Windows launcher selects the local FLAN-T5-base model. Install its optional runtime with python -m pip install -r backend\requirements-llm.txt; the model weights are stored under work/models/flan-t5-base. Inference runs locally without sending incident data to a remote service. Check /api/health for the active model status. Set THREAT_REPORT_LLM_PROVIDER=openai-compatible to use the optional OpenAI-compatible endpoint instead.


The model weights are stored under work/models/flan-t5-base and excluded from Git. The launcher points to this local copy so report generation does not need to contact Hugging Face after setup.




