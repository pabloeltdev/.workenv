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

          # kitty --session $conf_file;
# Create a command of type 'kt-[session_name] [working_dir]' for each kitten session files 
session_dir="$HOME/.config/kitty/sessions"
for conf_file in "$session_dir"/*.conf; do
    if [[ -f "$conf_file" ]]; then
        # Extract the filename without the path and extension
        session_name=$(basename "$conf_file" .conf)
        # Dynamically create a command for each session file 
        eval "function kt-$session_name() {
          export PROJECT_DIR=\$1;
          nohup kitty --session $conf_file >/dev/null 2>&1 &
          exit
        }"
    fi
done
