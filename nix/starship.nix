{ _, ... }:
{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      command_timeout = 1300;
      scan_timeout = 50;
      format = "$all\n";

      custom.jj = {
        when = "jj-starship detect";
        shell = [ "jj-starship" ];
        format = "$output ";
      };

      git_branch = {
        disabled = true;
      };

      git_status = {
        disabled = true;
      };
    };
  };
}
