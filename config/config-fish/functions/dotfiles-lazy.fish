function dotfiles-lazy
  lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME $argv
end
