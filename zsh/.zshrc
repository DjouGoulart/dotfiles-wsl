# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.config/oh-my-zsh"

# Cache files
ZSH_CACHE="${HOME}/.cache/zsh"
[[ ! -d "${ZSH_CACHE}" ]] && mkdir -pv "${ZSH_CACHE}"

export HISTFILE="${ZSH_CACHE}/history"
ZSH_COMPDUMP="${ZSH_CACHE}/zcompdump-${ZSH_VERSION}"
ZSH_CACHE_DIR="${ZSH_CACHE}"

# Custom
ZSH_CUSTOM="${HOME}/.config/zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

ZSH_DISABLE_COMPFIX=true
ZSH_TMUX_AUTOSTART=true

ENABLE_CORRECTION="true"

plugins=(
  git 
  zsh-autosuggestions
  zsh-syntax-highlighting
  extract
  sudo
  history
  ssh-agent
)

source "${ZSH}/oh-my-zsh.sh"

# P10k configs
[[ ! -f "${ZSH_CUSTOM}/p10k.zsh" ]] || source "${ZSH_CUSTOM}/p10k.zsh"

# Start asdf if exists
if [ -d "${HOME}/.asdf" ]; then
  . "${HOME}/.asdf/asdf.sh"
  . "${HOME}/.asdf/completions/asdf.bash"
fi

# User configs
for file in ~/.shell/{exports,aliases,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Conda configs
type conda >/dev/null && [[ -f "${HOME}/.conda-custom" ]] && source "${HOME}/.conda-custom"
