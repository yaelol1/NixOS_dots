{ pkgs, ...}:{

  environment.systemPackages = with pkgs; [
    cmake
    gcc
    gnumake
    libgcc
  ];

}
