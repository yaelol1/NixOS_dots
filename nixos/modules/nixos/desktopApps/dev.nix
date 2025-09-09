{ pkgs, lib, ...}:{
  environment.systemPackages = with pkgs; [
    syncthing
    emacs
    vim
  ];

}
