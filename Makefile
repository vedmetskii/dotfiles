.PHONY: all
all: update clean

.PHONY: install
install: install-lix install-home-manager update

.PHONY: update
update: configure-dotfiles update-dotfiles

.PHONY: clean
clean:
	@rm -f result

.PHONY: install-lix
install-lix:
	@curl -sSf -L https://install.lix.systems/lix | sh -s -- install

.PHONY: install-home-manager
install-home-manager:
	@nix-channel --add https://github.com home-manager
	@nix-channel --update
	@nix-shell '<home-manager>' -A install

.PHONY: configure-dotfiles
configure-dotfiles:
	@sed -E -i "s/username = \"\w+\";/username = \"$${USER}\";/g" flake.nix

.PHONY: update-dotfiles
update-dotfiles:
	@home-manager switch --flake .
