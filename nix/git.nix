{ _, ... }: {

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
