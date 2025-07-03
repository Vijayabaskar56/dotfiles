# PowerShell Git Aliases

This module provides a set of useful PowerShell aliases and functions for Git, mirroring the functionality of the Oh My Bash Git plugin.

## Installation

1. First, ensure you have a PowerShell profile. If you don't have one, create it:
```powershell
if (!(Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}
```

2. Add the following line to your PowerShell profile to import the Git aliases:
```powershell
. "$env:USERPROFILE\.config\git\git-aliases.ps1"
```

3. Reload your PowerShell profile:
```powershell
. $PROFILE
```

## Available Aliases

### General Git Commands

- `g`: Shortcut for `git`
- `ga`: Shortcut for `git add`
- `gaa`: Shortcut for `git add --all`
- `gcom`: Shortcut for `git commit`
- `gca`: Shortcut for `git commit --all`
- `gcmsg`: Shortcut for `git commit --message`
- `gd`: Shortcut for `git diff`
- `gdca`: Shortcut for `git diff --cached`
- `gf`: Shortcut for `git fetch`
- `gpull`: Shortcut for `git pull`
- `gpr`: Shortcut for `git pull --rebase`
- `gpsh`: Shortcut for `git push`
- `gs`: Shortcut for `git status`

### Branching and Merging

- `gcb`: Shortcut for `git checkout -b`
- `gco`: Shortcut for `git checkout`
- `gmrg`: Shortcut for `git merge`
- `grb`: Shortcut for `git rebase`
- `grbi`: Shortcut for `git rebase --interactive`
- `grbd`: Shortcut for `git rebase develop`
- `gsw`: Shortcut for `git switch`

### Tagging

- `gta`: Shortcut for `git tag --annotate`
- `gts`: Shortcut for `git tag --sign`
- `gtv`: Shortcut for `git tag`

### Miscellaneous

- `gclean`: Shortcut for `git clean -fd`
- `gignore`: Ignores changes to tracked files
- `gunignore`: Stops ignoring changes to tracked files
- `gcount`: Shows commit count by author

### Helper Functions

- `Get-CurrentBranch`: Get the name of the current branch
- `Get-CurrentRepository`: Get the list of remotes for the current repository
- `Get-GitMainBranch`: Check if main exists and use instead of master
- `Get-GitDevelopBranch`: Check for develop and similarly named branches

## Usage Example

To add all changes and commit with a message:

```powershell
gaa; gcmsg "Your commit message"
```

Note: In PowerShell, we use semicolons (;) to chain commands instead of the && operator used in bash. 
