{pkgs, ...}:{
  environment.systemPackages = with pkgs; [
    audacity
    xppen_4
    obs-studio
    krita
    kdePackages.kdenlive
    gimp
  ];
}

