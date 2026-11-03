# Experiments

A descriptive run was executed on Benign Traffic DATASET.csv after parsing its day-first AM/PM timestamps. It accepted 32,606 records, rejected 0, and deduplicated 14. The heuristic rules generated 21 findings / 18 incidents involving 513 unique records, all labeled Benign Traffic. That is a 1.57% descriptive event-level false-positive rate (513/32,606). No attack examples were present, so recall and general discrimination cannot be measured. This is not a holdout benchmark result. No LLM experiment was run.

Planned comparison: template report, evidence-grounded report, validated evidence-grounded report. Ablate evidence selection, correlation, verification, injection defenses and ML only after each component exists. Keep detector metrics separate from report-quality metrics. Document labels, split, seed, software, dataset fingerprint, provider/model, raw outputs and latency. Human review is required for semantic factuality and recommendation relevance. Results directory is reserved for actual exports.

