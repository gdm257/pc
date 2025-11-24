## Common
```powershell
irm https://get.activated.win | iex # Windows Activation
powershell -ExecutionPolicy ByPass -c "irm -useb https://pixi.sh/install.ps1 | iex" # pixi
```

## Recover
```powershell
pixi run uvx dotbot ...
uvx dotbot ...
dotbot -v -c ./dotbot.registry.yaml
dotbot -v -c ./dotbot.once.lib.yaml
dotbot -v -c ./dotbot.links.yaml
```

## From Scratch
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser; irm get.scoop.sh | iex # scoop
dotbot -v -c ./dotbot.registry.yaml
dotbot -v -c ./dotbot.once.lib.yaml
dotbot -v -c ./dotbot.links.yaml
dotbot -v -c ./dotbot.scoop.yaml
```

## Installation
```powershell
powershell -c "irm bun.com/install.ps1 | iex" # bun
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex" # uv
```
