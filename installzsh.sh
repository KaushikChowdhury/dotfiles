#!/usr/bin/env bash

sudo apt install zsh -y

sudo apt-get install build-essential curl file git -y

sudo chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

source ~/.zshrc

sed -i 's/robbyrussell/agnoster/g' ~/.zshrc

source ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo "plugins=(dirhistory history colored-man-pages jsontools python pip git zsh-autosuggestions zsh-syntax-highlighting)">> ~/.zshrc

source ~/.zshrc
