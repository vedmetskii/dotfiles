{ _, ... }:
{

  services.flatpak = {
    enable = true;
    packages = [
      "app.zen_browser.zen"
      "com.github.tchx84.Flatseal"
      "md.obsidian.Obsidian"
      "org.gnome.Connections"
      "org.keepassxc.KeePassXC"
      "org.onlyoffice.desktopeditors"
      "org.telegram.desktop"
      "org.gnome.Loupe"
      "com.heroicgameslauncher.hgl"
      "org.blender.Blender"
      "org.gnome.Totem"
      "us.zoom.Zoom"
      "menu.kando.Kando"
    ];
    remotes = [
      {
        name = "flathub";
        location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
      }
    ];
  };
}
