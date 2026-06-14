# Required packages (Needed for everything to work)
winget install Git.Git -e --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install Microsoft.WindowsTerminal --silent --source winget --accept-source-agreements --accept-package-agreements
winget install --id glzr-io.glazewm --exact --version 3.10.1 --no-upgrade --silent --source winget --accept-source-agreements --accept-package-agreements
# winget install --id glzr-io.zebar --exact --version 3.1.1 --no-upgrade --silent # Zebar now come with glazewm
winget install --id eza-community.eza -e --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install --id MikeFarah.yq --source winget --accept-source-agreements --accept-package-agreements;
winget install --id jqlang.jq --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install --id Microsoft.PowerToys -e --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install --id MSYS2.MSYS2 -e --silent --source winget --accept-source-agreements --accept-package-agreements;

# Application (comment out things you don't need before running this script)
winget install --id Discord.Discord -e --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install --id Google.Chrome -e --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install --id Google.GoogleDrive -e --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install "Lenovo Vantage" --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install --id 7zip.7zip -e --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install --id CoreyButler.NVMforWindows -e --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install -e --id Microsoft.VisualStudioCode --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install Notion.Notion --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install --id pnpm.pnpm -e --silent --source winget --accept-source-agreements --accept-package-agreements;
winget install Daum.PotPlayer --silent --source winget --accept-source-agreements --accept-package-agreements;
