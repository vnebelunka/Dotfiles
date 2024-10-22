cd $HOME
mkdir -p repos
mkdir -p .local
cd repos
# nvim part
if ! which nvim; then
  git clone -b release-0.10 git@github.com:neovim/neovim.git
  cd neovim
  make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=$HOME/.local/
  make install
fi
