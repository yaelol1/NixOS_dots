{pkgs, ...}:{
  environment.systemPackages = with pkgs; [
    bluetuith
    blueman
  ];
}
