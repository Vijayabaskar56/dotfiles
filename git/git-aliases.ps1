# PowerShell Git Aliases
# Mirrors the functionality of Oh My Bash Git plugin

# General Git Commands
Set-Alias -Name g -Value git
function Git-Add { git add $args }
Set-Alias -Name ga -Value Git-Add
function Git-AddAll { git add --all }
Set-Alias -Name gaa -Value Git-AddAll
function Git-Commit { git commit $args }
Set-Alias -Name gcom -Value Git-Commit
function Git-CommitAll { git commit --all $args }
Set-Alias -Name gca -Value Git-CommitAll
function Git-CommitMessage { git commit -m $args }
Set-Alias -Name gcmsg -Value Git-CommitMessage
function Git-Diff { git diff $args }
Set-Alias -Name gd -Value Git-Diff
function Git-DiffCached { git diff --cached $args }
Set-Alias -Name gdca -Value Git-DiffCached
function Git-Fetch { git fetch $args }
Set-Alias -Name gf -Value Git-Fetch
function Git-Pull { git pull $args }
Set-Alias -Name gpull -Value Git-Pull
function Git-PullRebase { git pull --rebase $args }
Set-Alias -Name gpr -Value Git-PullRebase
function Git-Push { git push $args }
Set-Alias -Name gpsh -Value Git-Push
function Git-Status { git status $args }
Set-Alias -Name gs -Value Git-Status

# Branching and Merging
function Git-CheckoutBranch { git checkout -b $args }
Set-Alias -Name gcb -Value Git-CheckoutBranch
function Git-Checkout { git checkout $args }
Set-Alias -Name gco -Value Git-Checkout
function Git-Merge { git merge $args }
Set-Alias -Name gmrg -Value Git-Merge
function Git-Rebase { git rebase $args }
Set-Alias -Name grb -Value Git-Rebase
function Git-RebaseInteractive { git rebase -i $args }
Set-Alias -Name grbi -Value Git-RebaseInteractive
function Git-RebaseDevelop { git rebase develop }
Set-Alias -Name grbd -Value Git-RebaseDevelop
function Git-Switch { git switch $args }
Set-Alias -Name gsw -Value Git-Switch

# Tagging
function Git-TagAnnotate { git tag -a $args }
Set-Alias -Name gta -Value Git-TagAnnotate
function Git-TagSign { git tag -s $args }
Set-Alias -Name gts -Value Git-TagSign
function Git-TagList { git tag }
Set-Alias -Name gtv -Value Git-TagList

# Miscellaneous
function Git-Clean { git clean -fd $args }
Set-Alias -Name gclean -Value Git-Clean
function Git-Ignore { git update-index --assume-unchanged $args }
Set-Alias -Name gignore -Value Git-Ignore
function Git-Unignore { git update-index --no-assume-unchanged $args }
Set-Alias -Name gunignore -Value Git-Unignore
function Git-Count { git shortlog -sn }
Set-Alias -Name gcount -Value Git-Count

# Helper Functions
function Get-CurrentBranch {
    return git rev-parse --abbrev-ref HEAD
}
Set-Alias -Name current_branch -Value Get-CurrentBranch

function Get-CurrentRepository {
    return git remote -v
}
Set-Alias -Name current_repository -Value Get-CurrentRepository

function Get-GitMainBranch {
    if (git show-ref --verify --quiet refs/heads/main) {
        return "main"
    } else {
        return "master"
    }
}
Set-Alias -Name git_main_branch -Value Get-GitMainBranch

function Get-GitDevelopBranch {
    if (git show-ref --verify --quiet refs/heads/develop) {
        return "develop"
    } else {
        return "development"
    }
}
Set-Alias -Name git_develop_branch -Value Get-GitDevelopBranch
