{ pkgs }: {
    deps = [
      pkgs.nodePackages.prettier
        pkgs.hugo
		pkgs.miniserve
    ];
}