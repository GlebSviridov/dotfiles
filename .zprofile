# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"


# Added by Toolbox App
export PATH="$PATH:/Users/glebsviridov/Library/Application Support/JetBrains/Toolbox/scripts"
export PATH="$PATH:/Users/glebsviridov/.dotnet/tools"

alias vim="/opt/homebrew/bin/nvim"

export GOOGLE_APPLICATION_CREDENTIALS=/Users/glebsviridov/lasso-dev-264521-eb4c1634bac7.json

alias kek="echo 2"
alias remove_local_branches="git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done"

alias dbAll="./cloud_sql_proxy -instances=\
lasso-dev-264521:us-central1:sql-main-dev=tcp:1433,\
lasso-prod-264521:us-central1:sql-main-replica=tcp:1444,\
lasso-prod-264521:us-central1:sql-main=tcp:1555"

alias myNoSql="ssh -L 9876:192.168.20.80:5125 youhodler@20.234.176.95 -p 22"
alias testShell="ssh -L 6421:192.168.20.80:6421 -L 5123:localhost:5123 -L 5125:localhost:5125 -L 5341:192.168.20.80:5341 -L 5009:10.240.1.50:5009 -L 8001:localhost:8001 youhodler@20.234.176.95 -p 22"
alias testShell2="ssh -L 6421:192.168.20.80:6421 -L 5125:localhost:5125 -L 5125:192.168.20.80:5125 -L 5341:192.168.20.80:5341 -L 5009:10.240.1.50:5009 youhodler@20.234.176.95 -p 22"
alias nugetLocal="dotnet pack -o ~/Work/local/packages"

