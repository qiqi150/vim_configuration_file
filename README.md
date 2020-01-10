this is vim configuration file

1.现在依赖的文件

	sudo apt-get install vim
	sudo apt-get install ctags
	sudo apt-get install vim-scripts
	vim-addons install taglist
	vim-addons install winmanager

2.生成tags文件

	ctags -R *

3.将.zshrc中的

	export ZSH="/home/zhxx/.oh-my-zsh"

	改为

	export ZSH=/home/你自己的根目录/.oh-my-zsh

	最下面的
	
	source /home/zhxx/.......

	这个里面的zhxx也改成自己的根目录

4.将vim打开输入:PluginInstall等待安装依赖

5.注意:

	这里的zsh是事前系统中已经安装过zsh
	
	如果没有请用

		sudo apt-get install zsh

	进行安装zsh

	相关的教程看网上的教学,我这里只有配置文件

