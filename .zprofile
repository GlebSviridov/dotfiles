# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"


# Added by Toolbox App
export PATH="$PATH:/Users/glebsviridov/Library/Application Support/JetBrains/Toolbox/scripts"
export PATH="$PATH:/Users/glebsviridov/.dotnet/tools"
export BAT_THEME="Visual Studio Dark+"
export RUST_ENVIRONMENT="local"

alias vim="/opt/homebrew/bin/nvim"

export GOOGLE_APPLICATION_CREDENTIALS=/Users/glebsviridov/lasso-dev-264521-eb4c1634bac7.json

alias kek="echo 2"
alias remove_local_branches="git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done"

alias dbAll="./cloud_sql_proxy -instances=\
lasso-dev-264521:us-central1:sql-main-dev=tcp:1433,\
lasso-prod-264521:us-central1:sql-main-replica=tcp:1444,\
lasso-prod-264521:us-central1:sql-main=tcp:1555"

alias nugetLocal="dotnet pack -o ~/Work/local/packages"

alias tel="telepresence quit && telepresence connect"
