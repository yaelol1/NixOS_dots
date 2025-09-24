{ pkgs, lib, ...}:{
  environment.systemPackages = with pkgs; [
   bat
   eza
   emacs
   exercism
   glow
   git
   git-credential-manager
   unzip
   wget
   zip
  ];

}
