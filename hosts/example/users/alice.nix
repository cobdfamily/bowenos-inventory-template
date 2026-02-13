{ pkgs, ... }:
{
  users.users.alice = {
    isNormalUser = true;
    shell = pkgs.bashInteractive;
    extraGroups = [ "wheel" "incus-admin" "systemd-journal" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAExampleKeyHere alice@example"
    ];
  };
}
