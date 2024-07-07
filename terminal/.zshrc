# Dont use long titles
DISABLE_AUTO_TITLE="true"
# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
# Setup asdf
. "$HOME/.asdf/asdf.sh"
#     append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
#     initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# bun completions
[ -s "/home/pabloelt/.bun/_bun" ] && source "/home/pabloelt/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Kitty sessions
function kt-native() {
  export PROJECT_DIR=$1
  kitty --session ~/.config/kitty/sessions/native.conf
}

function kt-nuxt() {
  export PROJECT_DIR=$1
  kitty --session ~/.config/kitty/sessions/nuxt.conf
}
