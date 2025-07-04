. $env:USERPROFILE\.config\powershell\user_profile.ps1

#f45873b3-b655-43a6-b217-97c00aa0db58 PowerToys CommandNotFound module

Import-Module -Name Microsoft.WinGet.CommandNotFound
#f45873b3-b655-43a6-b217-97c00aa0db58

# function ls {
#   eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions @args
# }
. "C:\Users\vj2k0\.config\git\git-aliases.ps1"


# oh-my-posh init pwsh --config ~/dotfiles/ohmyposh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\catppuccin.omp.json" | Invoke-Expression