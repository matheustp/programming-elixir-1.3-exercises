defmodule Conversions do
  
  def float_to_string(number) do
    :io.format("~.2f~n", [number])
  end

  def get_env_var(varname),
    do: System.get_env(varname)

  def get_file_ext(file_path),
    do: Path.ext_name(file_path)
  
  def get_cwd,
    do: System.cwd()
  
  def exec_cmd(cmd, args) when is_list(args) do
    System.cmd(cmd, args)
  end

  def exec_cmd(cmd, args) when is_binary(args) do
    System.cmd(cmd, [args])
  end

end
#1 :erlang.float_to_binary(NUMBER,ge decimals: 2)

#2 System.get_env("VARNAME")

#3