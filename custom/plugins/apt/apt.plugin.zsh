function updaterepo() {
    for source in "$@"; do
        sudo apt-get update -o Dir::Etc::sourcelist="sources.list.d/${source}" -o Dir::Etc::sourceparts="-" --no-list-cleanup
    done
}
