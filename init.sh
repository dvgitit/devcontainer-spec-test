mkdir -p devcontainer-spec-test/.devcontainer
touch devcontainer-spec-test/.devcontainer/devcontainer.json
# node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node # "node" is an alias for the latest version
# devcontainer
npm install -g @devcontainers/cli
