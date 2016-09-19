ExUnit.configure(exclude: [pending: true], trace: true, color: true)

#Ecto.Adapters.SQL.Sandbox.mode(MonstersManual.Repo, :manual)
Ecto.Adapters.SQL.Sandbox.mode(MonstersManual.Repo, {:shared, self()})

ExUnit.start