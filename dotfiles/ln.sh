cd ~
ln -sf ~/conf/dotfiles/.zshrc .zshrc
ln -sf ~/conf/dotfiles/.tmux.conf .tmux.conf
ln -sf ~/conf/dotfiles/.vimrc .vimrc
mkdir -p /.config/nvim/colors
ln -sf ~/conf/dotfiles/.vimrc .config/nvim/init.vim
ln -sf ~/conf/dotfiles/.vim/vim-monokai/colors/monokai.vim .config/nvim/colors

