# ~/.config/fish/config.fish

# No greeting when starting an interactive shell.
function fish_greeting
end

set -gx PATH $PATH $HOME/.krew/bin
set -gx PATH $PATH $HOME/.oci/bin
set -g theme_nerd_fonts yes
set -g theme_display_git_default_branch yes
set -g theme_display_k8s_context yes
set -g theme_display_k8s_namespace yes
set -gx EDITOR vim
set -gx AWS_DEFAULT_PROFILE Infra-Optare.DevOps-optare
set -gx VAULT_ADDR https://secrets.optare.net
set -gx SLACK_TOKEN TOKEN
set -gx KUBECOLOR_PRESET pre-0.0.21-dark

## k8s ##
alias k='kubectl'
#alias kubectl='kkubecolor'
# adds alias for "kubectl" to "kubecolor" with completions
function kubectl --wraps kubectl
  command kubecolor $argv
end

# adds alias for "k" to "kubecolor" with completions
function k --wraps kubectl
  command kubecolor $argv
end
alias kubeshell='kubectl run kubeshell --image arunvelsriram/utils -- sleep 99999'
alias ctx='kkubectx'
#alias ns='kkubens'
alias pods='kubectl get pods'
alias logs='kubectl --plain logs'
#alias ks='kubeswap' paste kubeswap as ks en /usr/local/bin
####

## git ##
alias clone='git clone'
alias commit='git commit -m'
alias push='git push'
alias pull='git pull'
alias checkout='git checkout'
alias dev='git checkout dev'
alias pre='git checkout pre'
alias master='git checkout master'
alias main='git checkout main'
alias gitsu='gitsu --global'
####

## common ##
alias ls='exa --icons' 
alias untargz='tar xvzf'
alias bat='bat --paging=never -p'
alias ssh='ssh -o ServerAliveInterval=60'
alias watch='viddy --pty --shell fish'
alias code='codium'
alias wishlist='wishlist -c ~/.config/wishlist.yml'
alias xclip='xclip -selection clipboard'
alias processes='ps -efj'
atuin init fish | source
####

## golang ##
set -gx CGO_ENABLED 0
alias goformat='gofumpt -l -w .'
alias golint='golangci-lint run --enable-all --disable godot'
####

## PATH ##
fish_add_path -g /usr/local/go/bin/
fish_add_path -g ~/go/bin/
##

## SLACKER ##
alias morning='slacker -message "Buenos dias!" -groups "#sistemas"'
alias bye='slacker -message "Hasta mañana!" -groups "#sistemas" && shutdown -h now'

## GITUSER ##
alias github='gituser personal'
alias gitlab='gituser work'

# disk usage #
alias gdu='gdu --no-delete'
alias duf='duf -hide-fs tmpfs,efivarfs,devtmpfs'

## AUTOJUMP ##	
begin
    set --local AUTOJUMP_PATH /usr/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end

scmpuff init -s --shell=fish | source
vfox activate fish | source