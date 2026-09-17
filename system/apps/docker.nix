{
  virtualisation.docker = {
    enable = true;
    daemon.settings = {
      ipv6 = false;
      dns = [
        "1.1.1.1"
        "8.8.8.8"
      ];
      registry-mirrors = [ ];
      fixed-cidr-v6 = null;
    };
  };
}
