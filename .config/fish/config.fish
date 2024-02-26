if status is-interactive
    # Commands to run in interactive sessions can go here
    alias vim nvim
    alias vi nvim
    alias ll "exa -l -g --icons"
    set -g theme_display_git_default_branch yes
    set -g theme_git_default_branches master main
    set -g theme_display_date no
    alias lla "exa -l -g -a --icons"
end
