{ _, ... }: {
  programs.delta = {
    enable = true;
    options = {
      navigate = true;
      line-numbers = true;
      side-by-side = true;
      theme = "Dracula";
    };
    enableGitIntegration = true;
  };
  programs.git = {
    enable = true;
    lfs.enable = true;
    settings = {
      alias = {
        c = "commit";
        sw = "switch";
        st = "status";
      };
      user = {
        name = "Kirill Vedmetskii";
        email = "kirik@kirill-vedmetskii.ru";
      };
    };

    # includes = [
    #   {
    #     condition = "gitdir:~/work/";
    #     contents = {
    #       user.email = "vedmetskii@sportsoft.ru";
    #     };
    #   }
    # ];
  };
}
