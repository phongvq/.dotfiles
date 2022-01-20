# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	zsh-autosuggestions
	zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh


alias_path="$HOME/.alias"
if [[ -f "${alias_path}" ]]; then
	source "${alias_path}"
fi


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/kde/google-cloud-sdk/path.zsh.inc' ]; then . '/home/kde/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/kde/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/kde/google-cloud-sdk/completion.zsh.inc'; fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [ -e /home/kde/.nix-profile/etc/profile.d/nix.sh ]; then . /home/kde/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# gcloud sdk: interactive mode (beta) has issue with python3.10
export CLOUDSDK_PYTHON="/usr/bin/python3.9"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# set default editor for other tools (git, nnn, etc.)
command -v nvim >/dev/null 2>&1 && export EDITOR=nvim
#command -v vim >/dev/null 2>&1 && export EDITOR=vim


# add go pkgs to PATH
export GOPATH="${GOPATH:-$HOME/go}"
export PATH=$PATH:$GOPATH/bin

