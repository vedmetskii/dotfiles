let
  pcName = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJjCytnM/mM1m40j/SiIW++sXthD18hw+J9EB3M/odyj kirill@kirill-laptop";
  users = [ pcName ];
in
{
  "secret1.age".publicKeys = users;
}
