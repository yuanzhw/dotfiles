#!/bin/bash

echo "开始部署 Dotfiles 环境..."

# 1. 确保 Oh My Zsh 的自定义插件目录存在
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
mkdir -p $ZSH_CUSTOM/plugins

# 2. 静默下载第三方插件（如果已存在则跳过）
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi

if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi

# 3. 将仓库中的 .zshrc 覆盖到当前家目录
# 注意：假设你在 VS Code 设置里将 target path 设为了 ~/dotfiles
cp ~/dotfiles/.zshrc ~/.zshrc

echo "Dotfiles 部署完成！享受你的终端吧。"
