# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -U compinit && compinit

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	#fzf
	fzf-tab
	git
	# zsh-vi-mode
	zsh-syntax-highlighting
	zsh-autosuggestions
)

# function zvm_config() {
#   # ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
#   # ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
# 	ZVM_INIT_MODE='sourcing'
# 	ZVM_VI_ESCAPE_BINDKEY='^a'
# }


source $ZSH/oh-my-zsh.sh


alias_path="$HOME/.alias"
if [[ -f "${alias_path}" ]]; then
	source "${alias_path}"
fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# if [ -e /home/kde/.nix-profile/etc/profile.d/nix.sh ]; then . /home/kde/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# gcloud sdk: interactive mode (beta) has issue with python3.10
export CLOUDSDK_PYTHON="/usr/bin/python3.9"



# set default editor for other tools (git, nnn, etc.)
# command -v nvim >/dev/null 2>&1 && export EDITOR=nvim
# command -v vim >/dev/null 2>&1 && export EDITOR=vim


# add go pkgs to PATH
export GOPATH="${GOPATH:-$HOME/go}"
export PATH="$PATH:$GOPATH/bin:/opt/pycharm-community-2021.3.2/bin:/opt/Postman:${KREW_ROOT:-$HOME/.krew}/bin:/${HOME}/.local/bin"

# zsh-vi-mode plugin has conflicted key bindings with fzf
# to fix it, use built-in zsh's vi-mode and load fzf after setting vi-mode
# bindkey -v
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



export TERM=xterm-256color
export EDITOR=nvim

if [ -f '$HOME/.kubeeye.zsh' ]; then . '$HOME/.kubeeye.zsh'; fi

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/kde/google-cloud-sdk/path.zsh.inc' ]; then . '/home/kde/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/kde/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/kde/google-cloud-sdk/completion.zsh.inc'; fi
if [ -f "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc" ]; then . "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"; fi
# if [ -f '/usr/local/bin/aws_completer' ]; then . '/usr/local/bin/aws_completer'; fi

export CLOUDSDK_PYTHON="$(which python3)"
