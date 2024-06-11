
# Prompt
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\wopian.omp.json" | Invoke-Expression

# Terminal Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -BellStyle None
Set-PSReadLinekeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PSFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
SET-Alias vim nvim
SET-Alias ll ls
SET-Alias g git
SET-Alias grep findstr
SET-Alias tig "C:\Program Files\Git\usr\bin\tig.exe"
SET-Alias less "C:\Program Files\Git\usr\bin\less.exe"
SET-Alias  c clear

# Utilities
function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
      Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

