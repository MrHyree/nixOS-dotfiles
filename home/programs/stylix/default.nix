{
  config,
  pkgs,
  isDesktop,
  ...
}:
let
  font = config.stylix.fonts.monospace;
in
{
  stylix = {
    enable = true;
    polarity = "dark";

    # base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-material-dark-medium.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/everforest.yaml";

    base16Scheme = {
      base00 = "#151827"; # fundo principal
      base01 = "#1c1c33"; # fundo secundário
      base02 = "#352c41"; # seleção
      base03 = "#4b4f69"; # comentários
      base04 = "#7873a5"; # foreground escuro
      base05 = "#c4bae5"; # foreground padrão
      base06 = "#d8d2ee"; # foreground claro
      base07 = "#f0ebfa"; # fundo mais claro
      base08 = "#d46b91"; # vermelho vivo (erros, variáveis)
      base09 = "#d59aaa"; # vermelho-laranja (números, constantes)
      base0A = "#d6b66f"; # âmbar/laranja (avisos, classes)
      base0B = "#7f9569"; # terracota (strings)
      base0C = "#78b7c9"; # marrom-avermelhado (suporte, regex)
      base0D = "#7499e4"; # vermelho escuro (funções, foco)
      base0E = "#aa96c5"; # bordô (keywords)
      base0F = "#6b4f75"; # vinho profundo (deprecated, tags)
    };

    # base16Scheme = {
    #   base00 = "#1d2021";
    #   base01 = "#282828";
    #   base02 = "#3c3836";
    #   base03 = "#504945";
    #   base04 = "#bdae93";
    #   base05 = "#d5c4a1";
    #   base06 = "#ebdbb2";
    #   base07 = "#fbf1c7";
    #   base08 = "#d43847";
    #   base09 = "#b82c3b";
    #   base0A = "#e55f4f";
    #   base0B = "#c32d3a";
    #   base0C = "#dd434e";
    #   base0D = "#9f2231";
    #   base0E = "#c72f44";
    #   base0F = "#7c1a27";
    # };

    # base16Scheme = {
    #   base00 = "#1e222a";
    #   base01 = "#353b45";
    #   base02 = "#3e4451";
    #   base03 = "#545862";
    #   base04 = "#565c64";
    #   base05 = "#abb2bf";
    #   base06 = "#b6bdca";
    #   base07 = "#c8ccd4";
    #   base08 = "#e06c75";
    #   base09 = "#d19a66";
    #   base0A = "#e5c07b";
    #   base0B = "#98c379";
    #   base0C = "#56b6c2";
    #   base0D = "#61afef";
    #   base0E = "#c678dd";
    #   base0F = "#be5046";
    # };

    targets = {
      gtk.enable = true;
      qt.enable = true;
      vscode.enable = false;
      cava.enable = false;
      noctalia-shell.enable = false;
      # starship.enable = false;
      alacritty.enable = false;
      zen-browser = {
        enable = true;
        profileNames = [ "default" ];
      };
      dank-material-shell.enable = false;
      sioyek.enable = false;
      zellij.enable = false;
      # gnome.enable = false;
    };

    fonts = {
      serif = font;
      sansSerif = font;
      emoji = font;
      monospace = {
        name = "Gintronic";
      };
      sizes = {
        applications = 14;
        desktop = 14;
        popups = 14;
      };
    };

    cursor = {
      name = "Vimix-cursors";
      package = pkgs.vimix-cursors;
      size = 32;
    };
  };

  # dconf.settings = {
  #   "org/gnome/desktop/interface" = {
  #     color-scheme = "prefer-dark";
  #   };
  # };
  #
  # xdg.configFile."gtk-3.0/settings.ini".text = ''
  #   gtk-application-prefer-dark-theme=true
  # '';
  #
  # xdg.configFile."gtk-4.0/settings.ini".text = ''
  #   gtk-application-prefer-dark-theme=true
  # '';
}
