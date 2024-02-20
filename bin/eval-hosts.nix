{deploy}: with (import <nixpkgs/lib>); {
  hosts = concatStringsSep "\n" (filter (h: h != "network") (attrNames (import deploy)));
}
