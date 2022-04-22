# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zprofile.pre.zsh"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add .NET Core SDK tools
export PATH="$PATH:/Users/drewwyatt/.dotnet/tools"

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zprofile.post.zsh"

# Python
eval "$(pyenv init --path)"
