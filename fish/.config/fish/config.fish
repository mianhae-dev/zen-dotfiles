if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -U fish_user_paths /opt/homebrew/bin $fish_user_paths
set -g fish_enable_autosuggest 1
set -g fish_enable_autosuggest 1
set -U fish_history_limit 1000
set -U fish_share_history true
set -U EDITOR nvim
set -U XDG_CONFIG_HOME "$HOME/.config"
set -U GIT_CONFIG_GLOBAL "$XDG_CONFIG_HOME/git/config"
set -U FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS \
   --highlight-line \
   --info=inline-right \
   --ansi \
   --layout=reverse \
   --border=none
   --color=bg+:#283457 \
   --color=bg:#16161e \
   --color=border:#27a1b9 \
   --color=fg:#c0caf5 \
   --color=gutter:#16161e \
   --color=header:#ff9e64 \
   --color=hl+:#2ac3de \
   --color=hl:#2ac3de \
   --color=info:#545c7e \
   --color=marker:#ff007c \
   --color=pointer:#ff007c \
   --color=prompt:#2ac3de \
   --color=query:#c0caf5:regular \
   --color=scrollbar:#27a1b9 \
   --color=separator:#ff9e64 \
   --color=spinner:#ff007c \
 "
