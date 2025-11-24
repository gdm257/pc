## Common
```
# Windows Activation
Set-ExecutionPolicy Bypass -Scope Process -Force
irm https://get.activated.win | iex

# mise (Linux)
curl https://mise.run | sh

# mise (choco)
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install mise

# mise (winget)
Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe
winget install jdx.mise

# mise (scoop)
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser; irm get.scoop.sh | iex # scoop
scoop install mise

# mise
cd <repo>/
mise trust
mise install
mise activate
```

## Recover
```powershell
dotbot -v -c ./dotbot.registry.yaml
dotbot -v -c ./dotbot.once.lib.yaml
dotbot -v -c ./dotbot.links.yaml
```

## From Scratch
```powershell
dotbot -v -c ./dotbot.registry.yaml
dotbot -v -c ./dotbot.once.lib.yaml
dotbot -v -c ./dotbot.links.yaml
```

## Optional Installation
```powershell
powershell -c "irm bun.com/install.ps1 | iex" # bun
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex" # uv
```
