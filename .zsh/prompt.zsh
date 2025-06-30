git_status=""
branch=""
staged_changes=""
prefix="<"
suffix=">"

inGitDirectory=false

setPrompt() {
    PROMPT="╭─%F{green}%n@%m%f %F{blue}%~%f %F{yellow}$git_status%f
╰─$ "
    RPROMPT="%F{red}%? ↵%f"
}

chpwd () {  # Run on cd
    if [[ -d "$(pwd)/.git" ]]; then
        inGitDirectory=true
    else
        inGitDirectory=false
    fi
}

precmd() {
    if [[ $inGitDirectory == true ]]; then
        updateGitStatus
    else
        git_status=""
    fi
    setPrompt
}

updateGitStatus() {
    branch=$(git branch --show-current)

    # if [[ $(git diff --cached --name-only | wc -l) > 0 ]]; then
    #     staged_changes="%F{red}●%F{yellow}"
    # else
    #     staged_changes=""
    # fi
 
    if [[ -n "$(git status --porcelain)" ]]; then
        staged_changes="%F{red}●%F{yellow}"
    else
        staged_changes=""
    fi

    git_status="$prefix$branch$staged_changes$suffix"
}
