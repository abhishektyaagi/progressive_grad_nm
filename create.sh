for branch in $(git branch -r | grep upstream | sed 's/upstream\///'); do
    if ! git show-ref --verify --quiet refs/heads/$branch; then
        git branch $branch upstream/$branch
    fi
done
