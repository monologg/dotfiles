# Basic Setting
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y awscli python3-pip tmux fonts-powerline
sudo apt -y autoremove

# Install zsh
sudo apt-get install -y zsh
sudo chsh -s /bin/zsh "$USER"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install oh-my-zsh plugins
## zsh-autosuggstions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install spaceship theme
if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt ]; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt --depth=1
fi
ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme

# Copy .zshrc
cp .zshrc ~/.zshrc

# Copy .tmux.conf.local
cp .tmux.conf.local ~/.tmux.conf.local
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf

# github profile
git config --global user.email "adieujw@gmail.com"
git config --global user.name "monologg"

# github lg alias
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Download anaconda script
wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh