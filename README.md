
# Vim Configuration Script

This repository contains a script to install and configure Vim with essential plugins for DevOps administrators. The script is designed to work on multiple Linux distributions, including Debian-based (Ubuntu, Debian), RedHat-based (CentOS, Fedora), and Arch-based systems.

## Features

- Installs Vim, Git, and Curl
- Sets up Pathogen for plugin management
- Installs useful Vim plugins:
  - NERDTree (file system explorer)
  - Vim Fugitive (Git integration)
  - Vim Airline (status/tabline)
  - Syntastic (syntax checking)
  - AWS Vim (AWS CLI integration)
  - GCloud Vim (Google Cloud SDK integration)
  - Azure Vim (Azure CLI integration)
- Configures Vim settings for an enhanced editing experience

## Installation

### Prerequisites

- A Linux-based operating system (Debian, Ubuntu, CentOS, Fedora, Arch Linux)
- `curl` installed (the script installs it if not already present)

### Steps

1. Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/vim-config-script.git
cd vim-config-script
```

2. Make the script executable:

```bash
chmod +x install_vim.sh
```

3. Run the script:

```bash
./install_vim.sh
```

The script will install Vim, Git, and Curl (if not already installed), set up Pathogen, and install the specified plugins. It will also create a `.vimrc` configuration file in your home directory with the necessary settings.

## Usage

After running the script, Vim will be configured with the following features:

- **Line Numbers**: Displayed both as absolute and relative.
- **Indentation**: Set to 4 spaces, with automatic indentation enabled.
- **Syntax Highlighting**: Enabled by default.
- **Plugins**:
  - **NERDTree**: File explorer, toggled with `Ctrl + n`.
  - **Vim Airline**: Enhanced status/tabline.
  - **Fugitive**: Git integration commands (`:Gstatus`, `:Gcommit`, `:Gpush`).
  - **Syntastic**: Syntax checking for various languages.
  - **AWS Vim**: AWS CLI integration commands.
  - **GCloud Vim**: Google Cloud SDK integration commands.
  - **Azure Vim**: Azure CLI integration commands.

## Contributing

Feel free to submit issues or pull requests if you have any improvements or fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
