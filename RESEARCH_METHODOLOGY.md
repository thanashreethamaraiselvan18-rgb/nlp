# Research methodology

Research question: does bounded evidence retrieval and reference validation improve traceability of automated threat summaries? No experiment has tested this question.

The user's supplied data is primary. None was available initially and no public benchmark was substituted. On upload, record actual fingerprint, size, rows, field types, missingness, invalid rows, duplicates, labels and permissions in the dataset profile.

Rules are heuristics, not calibrated probabilities. Reference validity can be counted automatically; evidence coverage and unsupported semantic claims need human claim annotation. Numerical/timeline consistency needs a documented extraction process. Recommendation quality needs human review. Record provider/model, prompt/config, context, latency and failures.

Compute supervised metrics only after label semantics are reviewed, a leakage-safe split is documented, and predictions exist. Separate detector metrics from report-quality metrics. Keep fingerprints, mapping, split, software version, thresholds, raw predictions and timestamps for reproducibility. Injection tests do not establish immunity.

Threats include ambiguous schema mapping, domain shift, exact deduplication, shared-event-only correlation, no environment baseline, and no analyst adjudication.
