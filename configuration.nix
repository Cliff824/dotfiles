# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{ config, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;
  boot.extraModulePackages = with config.boot.kernelPackages; [ xone xpadneo ];
  hardware.xone.enable = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  # hardware.bluetooth.enable = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;
  hardware.bluetooth.enable = true; # enables support for Bluetooth
  hardware.bluetooth.powerOnBoot = false; # powers up the default Bluetooth controller on boot
  
  services.blueman.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Dublin";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IE.UTF-8";
    LC_IDENTIFICATION = "en_IE.UTF-8";
    LC_MEASUREMENT = "en_IE.UTF-8";
    LC_MONETARY = "en_IE.UTF-8";
    LC_NAME = "en_IE.UTF-8";
    LC_NUMERIC = "en_IE.UTF-8";
    LC_PAPER = "en_IE.UTF-8";
    LC_TELEPHONE = "en_IE.UTF-8";
    LC_TIME = "en_IE.UTF-8";
  };

  hardware.opengl.driSupport32Bit = true;
  hardware.opengl.enable = true;

  # Pipewire
  security.rtkit.enable = true;
  services.pipewire.wireplumber.enable = true;
  services.pipewire = {
  enable = true;
  alsa.enable = true;
  alsa.support32Bit = true;
  pulse.enable = true;
  jack.enable = true;
  };

  # Configure console keymap
  console.keyMap = "uk";

  security.polkit.enable = true;

  services.flatpak.enable = true;
  
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.cliff824 = {
    isNormalUser = true;
    description = "Cliff824";
    extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "cdrom" "power" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Clean up old builds
  nix.gc.automatic = true;
  nix.optimise.automatic = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };
  nixpkgs.overlays = [
    (final: prev: {
      steam = prev.steam.override ({ extraPkgs ? pkgs': [], ... }: {
        extraPkgs = pkgs': (extraPkgs pkgs') ++ (with pkgs'; [
          libgdiplus
        ]);
      });
    })
  ];
  
  nixpkgs.config = {
  packageOverrides = pkgs: {
    unstable = import <nixos-unstable> {
      config = config.nixpkgs.config;
      };
    };
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    util-linux
    linuxHeaders
    neovim 
    wget
    git
    htop
    mpv
    rhythmbox
    firefox
    wofi
    alacritty
    hyprland
    pamixer
    seatd
    pipewire
    helvum
    easyeffects
    dunst
    udiskie
    hyprpaper
    xfce.thunar
    xfce.thunar-volman
    xfce.thunar-archive-plugin
    xfce.thunar-media-tags-plugin
    xorg.libXtst
    gvfs
    ntfs3g
    brightnessctl
    feh
    asunder
    pfetch
    gcc
    fish
    syncthing
    greetd.tuigreet
    waybar
    unzip
    mupdf
    papirus-icon-theme
    wl-clipboard
    clipman
    rustup
    rpi-imager
    xarchiver
    polkit
    polkit-kde-agent
    lutris
    gnome3.adwaita-icon-theme
    gtk4
    gtk3
    libxkbcommon
    mesa
    sassc
    wineWowPackages.full
    xdg-utils
    winetricks
    nwg-look
    keepassxc
    waybar
    qbittorrent
    mullvad-vpn
    mono
    networkmanagerapplet
    hexedit
    gnumake
    btop
    unstable.hyprlock
    ];

  services.mullvad-vpn.enable = true;

  #prevents overheating
  services.thermald.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  programs.hyprland = {
	enable = true;
	xwayland.enable = true;
  };
  
#  programs.waybar = {
# 	enable = true;
#	package = pkgs.waybar.overrideAttrs (oldAttrs: {
#	   mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
#	});
#  };

  services.dbus.enable = true;
  xdg.portal = {
	enable = true;
	wlr.enable = false;
	extraPortals = [ pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal-hyprland ];
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
   services.openssh.enable = true;

  # Thunar settings
  programs.xfconf.enable = true;
  services.tumbler.enable = true;
  services.gvfs.enable = true;

  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 22000 ];
  networking.firewall.allowedUDPPorts = [ 22000 21027 ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
 
  fonts.packages = with pkgs; [
  noto-fonts
  noto-fonts-cjk
  noto-fonts-emoji
  liberation_ttf
  fira-code
  fira-code-symbols
  mplus-outline-fonts.githubRelease
  dina-font
  proggyfonts
  nerdfonts
  font-awesome
  comfortaa
  iosevka
  source-code-pro
  fantasque-sans-mono
  roboto
  ];

  services.greetd = {
      enable = true;
      settings = {
        default_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --remember --cmd Hyprland";
          user = "cliff824";
	  };
     };
  };
  
  # this is a life saver.
  # literally no documentation about this anywhere.
  # might be good to write about this...
  # https://www.reddit.com/r/NixOS/comments/u0cdpi/tuigreet_with_xmonad_how/
  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal"; # Without this errors will spam on screen
    # Without these bootlogs will spam on screen
    TTYReset = true;
    TTYVHangup = true;
    TTYVTDisallocate = true;
  };
  
  #battery life
#  services.tlp = {
#      enable = true;
#      settings = {
#        CPU_SCALING_GOVERNOR_ON_AC = "performance";
#        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
#
#        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
#        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
#
#        CPU_MIN_PERF_ON_AC = 0;
#        CPU_MAX_PERF_ON_AC = 100;
#        CPU_MIN_PERF_ON_BAT = 0;
#        CPU_MAX_PERF_ON_BAT = 20;
#
#       #Optional helps save long term battery health
#       #START_CHARGE_THRESH_BAT0 = 40; # 40 and bellow it starts to charge
#       #STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops charging
#
#      };
#};



  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?

}
