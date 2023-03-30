# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias reload="source ~/.zshrc"

gomod() {
    REPOSITORY_URL=$(git remote get-url origin)
    echo "init go mod based on $REPOSITORY_URL ..."
    GO_MODULE_NAME=$(echo $(git remote get-url origin) | sed "s.git@..g; s.:./.g; s/.git//g")
    echo "exec command "go mod init $(echo $GO_MODULE_NAME)""
    go mod init $(echo $GO_MODULE_NAME)

}
