param(
    [string]$Owner = "DistefanoJoyerIA",
    [string]$RepoName = "global-knowledge"
)

$ErrorActionPreference = "Stop"
$dir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $dir

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    Write-Host "ERROR: Instala GitHub CLI (https://cli.github.com) y ejecuta 'gh auth login'." -ForegroundColor Red
    exit 1
}

Write-Host "Verificando sesion de GitHub..." -ForegroundColor Cyan
gh auth status
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

if (-not (Test-Path .git)) { git init -q }
git add -A
git commit -q -m "Init Di Stefano global knowledge" 2>$null

Write-Host "Creando repo publico $Owner/$RepoName y subiendo..." -ForegroundColor Cyan
gh repo create "$Owner/$RepoName" --public --source=. --push --description "Di Stefano IA - Saber global de diseno de joyeria (seguro, solo texto)"

Write-Host "" 
Write-Host "LISTO. En el panel 'Di Stefano IA' > Seguridad y Saber Global:" -ForegroundColor Green
Write-Host "  - Repo Global: $Owner/$RepoName" -ForegroundColor Green
Write-Host "  - (Opcional) Token Mantenedor: PAT de GitHub para aportar conocimiento." -ForegroundColor Green
Write-Host "El addon descargara global_knowledge.json automaticamente al pulsar 'Sincronizar'." -ForegroundColor Green
