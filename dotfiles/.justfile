# ==== Settings ====
set dotenv-load := true
# set windows-shell := ['pwsh', '-NoLogo', '-Command'] # error: Justfile does not contain recipe `Set-PSReadLineOption:`
# set windows-shell := ['pwsh', '-c']

# ==== Recipes ====

default:
  @ just --choose # 交互式选择配方
  @ # just --list # 列出配方

ping:
  @echo 'PONG'

helloworld:
  @echo 'Hello World'

# scoop variables
SCOOP_INSTALL_GLOBAL := if env_var_or_default('SCOOP_INSTALL_GLOBAL', 'true') == 'true' {'-g'} else {' '}
SCOOP_SKIP_HASH := if env_var_or_default('SCOOP_SKIP_HASH', 'false') == 'true' {'-s'} else {' '}

# scoop install
scoop: scoop-devops
alias scoop-install := scoop

scoop-devops:
  scoop install {{SCOOP_INSTALL_GLOBAL}} {{SCOOP_SKIP_HASH}}
