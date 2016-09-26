ExUnit.configure(exclude: [pending: true], trace: true, color: true)

Ecto.Adapters.SQL.Sandbox.mode(MonstersManual.Repo, {:shared, self()})

Faker.start
ExUnit.start


#defmodule DBTransactions do
#  use ExUnit.CaseTemplate
#
#  setup_all do
#    Ecto.Adapters.MySQL.begin_test_transaction(Repo)
#
#    on_exit fn ->
#      Ecto.Adapters.MySQL.rollback_test_transaction(Repo)
#    end
#  end
#
#  setup do
#    Ecto.Adapters.MySQL.restart_test_transaction(Repo, [])
#  end
#end

## Use it in your test module
#defmodule MessageTest do
#  use DBTransactions
#end