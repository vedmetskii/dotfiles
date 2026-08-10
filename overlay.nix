final: prev: {
  alacritty = prev.alacritty-graphics.overrideAttrs (oldAttrs: {
    preInstall = ''
      substituteInPlace extra/linux/Alacritty.desktop \
      --replace 'Exec=alacritty' 'Exec=nixGL alacritty'
    '';
  });
}
