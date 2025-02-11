function bu
  brew update
  brew upgrade $(brew leaves)
  brew upgrade $(brew list --cask)
end
