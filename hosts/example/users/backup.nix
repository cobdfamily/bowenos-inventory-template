{ pkgs, ... }:
{
  users.users.backup = {
    isNormalUser = true;
    shell = pkgs.bashInteractive;
    extraGroups = [ "backup" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAExampleKeyHere backup@example"
    ];
  };

  users.groups.backup = { };
}
