if status is-interactive
    # Commands to run in interactive sessions can go here
end

test -s /home/caigq/.nvm-fish/nvm.fish; and source /home/caigq/.nvm-fish/nvm.fish

set -gx PATH "$HOME/.npm/node_global/bin" $PATH

function fish_greeting

end

nvm use 20
clear
