#!/usr/bin/sh
# 一些注意的坑!
# 1. 安装 coc.nvim
#    安装过程一定要参考官方文档. 需要先安装 yarn 和 node.js
#    然后再执行 PlugInstall
#    参考: https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim
#    安装出现问题的时候可以使用 checkhealth 检测状态, 很好用
# 2. 下载 bingo
#    coc.nvim 只是一个补全框架 + lsp 客户端, 还需要一个真正的 language server.
#    不过 bingo 已经不继续维护了. 后面会有一个新的官方的 language server: gopls
#    目前新版本还没出来. 坐等. 
# 3. 配置 GOROOT
#    目前 Centos7 默认的 yum 源安装后 Go 版本就是 1.11 了, 所以不需要手动安装, 直接 yum 安装
#    相关环境变量已经要配置正确, 否则 language server 不能正确工作
#    bashrc 文件已经备份到该项目中

set -x
root=`pwd`
mkdir -p ~/.config/
ln -s $root/vim ~/.config/nvim
mv ~/.bashrc ~/.bashrc_bak
ln -s $root/bashrc ~/.bashrc
