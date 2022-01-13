
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


alias_path="$HOME/.alias"
if [[ -f "${alias_path}" ]]; then
	source "${alias_path}"
fi

