$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$pythonPath = 'C:\Users\thana\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
$env:THREAT_REPORT_PORT = '8002'
$env:THREAT_REPORT_LLM_PROVIDER = 'flan-t5'
$env:THREAT_REPORT_LLM_MODEL = Join-Path $root 'work\models\flan-t5-base'
$env:HF_HOME = Join-Path $root 'work\huggingface-cache'
$env:HF_HUB_DISABLE_XET = '1'
Set-Location $root
Write-Host 'Starting the updated Sentinel app on http://127.0.0.1:8002/'
& $pythonPath (Join-Path $root 'work\run_api.py')







