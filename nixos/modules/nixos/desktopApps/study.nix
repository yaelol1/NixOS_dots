{ pkgs, lib, ...}:{

  # Calibre-Web
  services.calibre-web= {
    enable = true;
    listen = {
      ip = "127.0.0.1";
      port = 8083;
    };
    options = {
      calibreLibrary = "/books";
      enableBookUploading = true;
      enableBookConversion = true;
    };
  };

  environment.systemPackages = with pkgs; [
    obsidian
    calibre
    anki
    typst
    tinymist
    zoom-us
    zotero
  ];

}
