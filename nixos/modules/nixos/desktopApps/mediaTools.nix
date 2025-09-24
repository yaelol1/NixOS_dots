{pkgs, ...}:{
  environment.systemPackages = with pkgs; [
    audacity
    obs-studio
    krita
    kdePackages.kdenlive
    gimp
  ];
}

