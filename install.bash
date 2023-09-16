#!/usr/bin/env bash

_green='\033[0;32m'
_yellow='\033[0;33m'
_no_color='\033[0m'
function _info {
	echo -e "${_green}[I] ============================================================="
	echo -e "${_green}[I] > $1"
	echo -e "${_green}[I] =============================================================${_no_color}"
}
function _warning {
	echo -e "${_yellow}[W] $1 ${_no_color}"
}

DOTFILE_DIR="$(dirname -- "$(readlink -f -- "$0")")"

_info "zshrc"
if [[ -f ~/.zshrc ]]; then
	mv ~/.zshrc ~/.zshrc.bk
fi
ln -s "${DOTFILE_DIR}/.zshrc" ~/.zshrc

_info "ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

_info "zsh plugin - fzf-tab"
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab || _warning "plugin fzf-tab exists."
_info "zsh plugin - zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || _warning "plugin zsh-syntax-highlighting exists."
_info "zsh plugin - zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || _warning "plugin zsh-autosuggestions exists."
_info "zsh theme - powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k || _warning "themes powerlevel10k exists."

_info "alias"
if [[ -f ~/.alias ]]; then
	mv ~/.alias ~/.alias.bk
fi
ln -s "${DOTFILE_DIR}/.alias" ~/.alias

_info "kube_aliases"
if [[ -f ~/.kube_aliases ]]; then
	mv ~/.kube_aliases ~/.kube_aliases.bk
fi
ln -s "${DOTFILE_DIR}/.kube_aliases" ~/.kube_aliases
