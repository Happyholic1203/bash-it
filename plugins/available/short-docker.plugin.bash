cite about-plugin
about 'Shorter `docker` to `d` while keeping all the autocompletion working'

d() {
    if [ $# -gt 0 ]; then
        cmd="docker"
        for arg in "$@"; do
            cmd+=" \"${arg//\"/\\\"}\""
        done
        eval $cmd
    else
        docker ps
    fi
}

# Complete d like docker
_completion_loader docker 2>/dev/null
eval $(complete -p docker 2>/dev/null | sed 's/ docker$/ d/g')
