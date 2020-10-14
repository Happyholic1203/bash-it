cite about-plugin
about 'Shorter `git` to `g` while keeping all the autocompletion working'

g() {
    if [ $# -gt 0 ]; then
        cmd="git"
        for arg in "$@"; do
            cmd+=" \"${arg//\"/\\\"}\""
        done
        eval $cmd
    elif _command_exists gitstatus; then
        gitstatus
    else
        git status
    fi
}

# Complete g like git
_completion_loader git 2>/dev/null
eval $(complete -p git 2>/dev/null | sed 's/ git$/ g/g')
