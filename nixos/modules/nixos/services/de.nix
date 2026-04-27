{config, pkgs, lib, inputs, ... }:{

  programs.niri.enable = true;

  environment.systemPackages = with pkgs; [
    go
    bibata-cursors
    btop
    cliphist
    fnott
    ffmpeg
    fd
    ripgrep
    resvg
    _7zz
    jq
    libnotify
    poppler
    swaybg
    hyprlock
    xwayland-satellite
    wl-clipboard
    yazi
    zoxide
  ];

  security.sudo = {
        enable = true;
        execWheelOnly = false;
        wheelNeedsPassword = true;

        extraRules = [{
          commands = [
            {
              command = "${pkgs.systemd}/bin/kanata -c ~/.config/kanata/kanata.kbd";
              options = [ "NOPASSWD" ];
            }
            {
              command = "${pkgs.systemd}/bin/systemctl suspend";
              options = [ "NOPASSWD" ];
            }
            {
              command = "${pkgs.systemd}/bin/reboot";
              options = [ "NOPASSWD" ];
            }
            {
              command = "${pkgs.systemd}/bin/poweroff";
              options = [ "NOPASSWD" ];
            }
          ];
          groups = [ "wheel" ];
        }];

    };

  fonts.fontDir.enable = true;

  fonts.packages = with pkgs; [
    font-arabic-misc
    baekmuk-ttf
    unfonts-core
    unifont
    lxgw-wenkai
    wqy_zenhei
    hachimarupop
    rounded-mgenplus
    arkpandora_ttf
    liberation-sans-narrow
    nerd-fonts.d2coding
    nerd-fonts.aurulent-sans-mono
    nerd-fonts.roboto-mono
    nerd-fonts.inconsolata-lgc
    nerd-fonts.cousine
    nerd-fonts.martian-mono
    nerd-fonts.terminess-ttf
    nerd-fonts.iosevka-term-slab
    nerd-fonts.proggy-clean-tt
    nerd-fonts.daddy-time-mono
    nerd-fonts.hasklug
    nerd-fonts.bitstream-vera-sans-mono
    nerd-fonts.d2coding
    nerd-fonts.intone-mono
    nerd-fonts.im-writing
    nerd-fonts.zed-mono
    nerd-fonts.overpass
    nerd-fonts.open-dyslexic
    nerd-fonts.monoid
    nerd-fonts.geist-mono
    nerd-fonts.lekton
    nerd-fonts.caskaydia-cove
    nerd-fonts.blex-mono
    nerd-fonts.lilex
    nerd-fonts.inconsolata
    nerd-fonts.profont
    nerd-fonts.fira-code
    nerd-fonts.fira-mono
    nerd-fonts.jetbrains-mono
    nerd-fonts.mononoki
    nerd-fonts.droid-sans-mono
    nerd-fonts.noto
    nerd-fonts.space-mono
    nerd-fonts.iosevka
    nerd-fonts.hack
    nerd-fonts.hurmit
    nerd-fonts.symbols-only
    nerd-fonts.ubuntu
  ];

}

