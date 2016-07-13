defmodule Db do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    tree = [supervisor(Db.Repo, [])]
    opts = [name: Db.Sup, strategy: :one_for_one]
    Supervisor.start_link(tree, opts)
  end

end
