<#
.SYNOPSIS
  One-time Spicetify setup for the rice (run in a NORMAL, non-admin PowerShell).

  Installs the Spicetify CLI + the Comfy theme, drops in the rice's per-theme color
  schemes (jade/aqua/wasabi/shuri/tlinh), and applies the jade scheme. After this,
  `rice <theme>` will re-theme Spotify automatically (see set_spotify_theme in rice.sh).

  Prerequisite: the desktop Spotify (from spotify.com / winget Spotify.Spotify) must be
  installed and have been launched once. Do NOT run this as Administrator — Spicetify
  refuses to patch Spotify from an elevated shell.
#>

$ErrorActionPreference = 'Stop'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

if (([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)) {
  Write-Host "ERROR: This is an elevated shell. Run it from a normal (non-admin) PowerShell." -ForegroundColor Red
  exit 1
}

$spotify = "$env:APPDATA\Spotify\Spotify.exe"
if (-not (Test-Path $spotify)) {
  Write-Host "Spotify not found at $spotify." -ForegroundColor Yellow
  Write-Host "Install desktop Spotify first (https://www.spotify.com/download), launch it once, then re-run this." -ForegroundColor Yellow
  exit 1
}

# 1) Spicetify CLI
$spice = "$env:LOCALAPPDATA\spicetify\spicetify.exe"
if (-not (Test-Path $spice)) {
  Write-Host "Installing Spicetify CLI..." -ForegroundColor Cyan
  Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/spicetify/cli/main/install.ps1' | Invoke-Expression
}
if (-not (Test-Path $spice)) { Write-Host "Spicetify CLI install failed." -ForegroundColor Red; exit 1 }
Write-Host "Spicetify: $(& $spice -v)" -ForegroundColor Green

# 2) Comfy theme
$themesDir = "$env:APPDATA\spicetify\Themes"
$comfyDir  = Join-Path $themesDir 'Comfy'
New-Item -ItemType Directory -Force $themesDir | Out-Null
if (-not (Test-Path (Join-Path $comfyDir 'user.css'))) {
  Write-Host "Downloading Comfy theme..." -ForegroundColor Cyan
  $zip = "$env:TEMP\comfy.zip"; $ext = "$env:TEMP\comfy-extract"
  Invoke-WebRequest -UseBasicParsing 'https://github.com/Comfy-Themes/Spicetify/archive/refs/heads/main.zip' -OutFile $zip
  Remove-Item $ext -Recurse -Force -ErrorAction SilentlyContinue
  Expand-Archive $zip $ext -Force
  $src = Get-ChildItem $ext -Recurse -Directory | Where-Object { Test-Path (Join-Path $_.FullName 'user.css') } | Select-Object -First 1
  if (-not $src) { Write-Host "Could not locate Comfy theme files in the download." -ForegroundColor Red; exit 1 }
  New-Item -ItemType Directory -Force $comfyDir | Out-Null
  Copy-Item "$($src.FullName)\*" $comfyDir -Recurse -Force
}

# 3) Drop in the rice's per-theme color schemes
$riceColors = Join-Path $PSScriptRoot 'spicetify\color.ini'
if (-not (Test-Path $riceColors)) { Write-Host "Missing $riceColors" -ForegroundColor Red; exit 1 }
Copy-Item $riceColors (Join-Path $comfyDir 'color.ini') -Force
Write-Host "Installed rice color schemes into Comfy." -ForegroundColor Green

# 4) Configure + apply (jade default). Spotify must be closed for apply.
Get-Process Spotify -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
& $spice config current_theme Comfy
& $spice config color_scheme jade
& $spice backup apply

Write-Host ""
Write-Host "Done. Spotify is themed (Comfy + jade). Use 'rice <theme>' to switch Spotify with the rest." -ForegroundColor Green
