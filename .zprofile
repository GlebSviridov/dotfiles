# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"


# Added by Toolbox App
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
export BAT_THEME="Visual Studio Dark+"
export RUST_ENVIRONMENT="local"

alias vim="/opt/homebrew/bin/nvim"

export GOOGLE_APPLICATION_CREDENTIALS=/Users/gleb.sviridov@iqvia.com/.config/gcloud/application_default_credentials.json

alias kek="echo 2"
# Delete local branches whose upstream was removed on the remote
remove_local_branches() {
  git fetch -p || return
  git for-each-ref --format='%(refname:short) %(upstream:track)' refs/heads |
    awk '$2 == "[gone]" { print $1 }' |
    while read -r branch; do git branch -D "$branch"; done
}

alias dbAll="./cloud-sql-proxy 'lasso-dev-264521:us-central1:sql-main-dev?port=1433' 'lasso-prod-264521:us-central1:sql-main-replica?port=1444' 'lasso-prod-264521:us-central1:sql-main?port=1555'"

alias nugetLocal="dotnet pack -o ~/Work/local/packages"

alias tel="telepresence quit && telepresence connect"

alias ss="atuin search -i"

alias lg="lazygit";
