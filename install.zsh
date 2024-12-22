#!/bin/zsh
#!/bin/zsh

function install_brew() {


  echo "==============================================="
  echo "🍺 Homebrew Installation Script"
  echo "==============================================="

  if ! command -v brew >/dev/null 2>&1; then
    echo "=> Homebrew is not installed."
    echo "=> Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo >> "${HOME}/.zprofile"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "${HOME}/.zprofile"
    echo "$(/opt/homebrew/bin/brew shellenv)"
    . ~/.zprofile #< this is required to continue with installation
  fi
  echo "✅ Homebrew is installed. Version: $(brew --version)"
  echo "==============================================="

}

function install_formulae_and_casks() {
if [[ -f Brewfile ]]; then
  echo "✅ Found Brewfile. Listing formulae and casks:"
  echo "-----------------------------------------------"
  cat Brewfile | grep -v "^#" | grep -E "^(brew|cask|tap)" | sed 's/^/ - /'
  echo "-----------------------------------------------"
  echo "⚙️  Starting installation process..."
  brew update -q
  brew bundle
  echo "==============================================="
  echo "🎉 Installation completed!"
  . ~/.zprofile
else
  echo "❌ No Brewfile found in the current directory."
  echo "Please make sure the Brewfile is present and try again."
fi
}

function install_dotfiles() {
  stow -t ${HOME} \
  alacritty \
	kitty \
  fish \
	oh-my-posh
}

function setup_shell() {
  sudo sh -c "echo /opt/homebrew/bin/fish >> /etc/shells"
  fish -c 'fisher update'
  chsh -s "$(which fish)"
}

install_brew
install_formulae_and_casks
install_dotfiles
setup_shell
fish 