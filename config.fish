# ~/.config/fish/config.fish

# No greeting when starting an interactive shell.
function fish_greeting
end

set -g theme_nerd_fonts yes
set -g theme_display_git_default_branch yes
set -g theme_display_k8s_context yes
set -g theme_display_k8s_namespace yes
set -gx EDITOR vim

## k8s ##
alias k='kubectl'
alias kubectl='kkubecolor'
alias kubeshell='kubectl run kubeshell --image arunvelsriram/utils -- sleep 99999'
alias ctx='kkubectx'
alias ns='kkubens'
alias pods='kubectl get pods'
alias logs='kubectl --plain logs'
#alias ks='kubeswap' paste kubeswap as ks en /usr/local/bin
####

## git ##
alias clone='git clone'
alias commit='git commit -m'
alias push='git push'
####

## common ##
alias ls='exa --icons' 
alias untargz='tar xvzf'
alias bat='batcat --paging=never -p'
alias ssh='ssh -o ServerAliveInterval=60'
alias viddy='viddy --pty --shell fish'
alias code='codium'
####

## golang ##
alias goformat='gofumpt -l -w .'
alias golint='golangci-lint run --enable-all --disable godot'
####

scmpuff init -s --shell=fish | source
