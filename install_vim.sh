#!/bin/bash

# Function to install Vim and Git based on the detected OS
install_vim_and_git() {
    if [ -f /etc/debian_version ]; then
        # Debian-based system (Ubuntu, Debian)
        sudo apt update && sudo apt install -y vim git curl
    elif [ -f /etc/redhat-release ]; then
        # RedHat-based system (CentOS, Fedora)
        sudo yum install -y vim git curl
    elif [ -f /etc/arch-release ]; then
        # Arch-based system
        sudo pacman -Syu vim git curl --noconfirm
    else
        echo "Unsupported Linux distribution"
        exit 1
    fi
}

# Install Vim, Git, and Curl
install_vim_and_git

# Create necessary directories
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/pack/plugins/start

# Install Pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install plugins
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic

# Install cloud plugins
git clone https://github.com/swoodford/aws-vim.git ~/.vim/bundle/aws-vim
git clone https://github.com/stephenfewer/gcloud-vim.git ~/.vim/bundle/gcloud-vim
git clone https://github.com/yourusername/azure-vim.git ~/.vim/bundle/azure-vim

# Copy .vimrc configuration
cat <<EOL > ~/.vimrc
" Basic settings
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set autoindent
set background=dark

" Pathogen settings
execute pathogen#infect()
syntax on
filetype plugin indent on

" Plugin settings
" NERDTree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1

" Fugitive
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gp :Gpush<CR>

" Syntastic
let g:syntastic_python_checkers = ['flake8']
EOL

echo "Vim and plugins installed and configured successfully!"
