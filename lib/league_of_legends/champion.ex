defmodule LeagueOfLegends.Champion do
  def list do
    LeagueOfLegends.perform_request("champion", params: %{api_key: LeagueOfLegends.key})
  end
end
