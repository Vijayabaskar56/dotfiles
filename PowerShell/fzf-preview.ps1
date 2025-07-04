param($path)
if (Test-Path $path -PathType Container) {
    eza --tree --color=always $path | Select-Object -First 200
} else {
    bat --color=always --style=numbers,changes $path
}
