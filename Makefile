SHELL = /bin/bash

LINK_COMMAND=bash ./create_link.sh


.PHONY: all brew without-brew nvim alacritty bin hypr zsh starship rofi waybar zellij
all: without-brew

install: brew without-brew

brew:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew bundle check && brew bundle
	echo >> /home/kirill/.zshrc
	echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"' >> /home/kirill/.zshrc
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"


without-brew: nvim alacritty bin hypr rofi waybar starship zellij zsh

nvim:
	$(LINK_COMMAND) nvim ~/.config/nvim

alacritty:
	$(LINK_COMMAND) alacritty ~/.config/alacritty

bin:
	$(LINK_COMMAND) bin ~/.local/share/bin

hypr:
	$(LINK_COMMAND) hypr ~/.config/hypr

rofi:
	$(LINK_COMMAND) rofi ~/.config/rofi

waybar:
	$(LINK_COMMAND) waybar ~/.config/waybar

zellij:
	$(LINK_COMMAND) zellij ~/.config/zellij

starship:
	$(LINK_COMMAND) starship ~/.config/starship

zsh:
	rm -rf ~/.zshrc
	ZSH=~/.oh-my-zsh sh -c \
		"$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true
	git clone https://github.com/zsh-users/zsh-completions.git \
  	$${ZSH_CUSTOM:-$${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions || true
	git clone https://github.com/zsh-users/zsh-autosuggestions \
		$${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || true
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
		$${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || true
	rm -rf ~/.zshrc
	$(LINK_COMMAND) zsh ~/
