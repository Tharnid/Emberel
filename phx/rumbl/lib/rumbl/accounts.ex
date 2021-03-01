defmodule Rumbl.Accounts do
    @moduledoc """
    The Accounts context.
    """

    alias Rumbl.Accounts.User

    def get_user(id) do
      Enum.find(list_users(), fn map -> map.id == id end)
    end

    def get_user_by(params) do
      Enum.find(list_users(), fn map ->
        Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
      end)
    end


    def list_users do
      [
        %User{id: "1", name: "Aragoth Bartlo", username: "Aragoth"},
        %User{id: "2", name: "Saldor Stone", username: "Saldor"},
        %User{id: "3", name: "Tharnid Uribe", username: "Tharnid"}
      ]
    end
  end
