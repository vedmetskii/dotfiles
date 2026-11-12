final: prev: {
  alacritty = (prev.alacritty.override { withGraphics = true; }).overrideAttrs (oldAttrs: {
    preInstall = ''
      substituteInPlace extra/linux/Alacritty.desktop \
      --replace 'Exec=alacritty' 'Exec=nixGL alacritty'
    '';
  });
}
