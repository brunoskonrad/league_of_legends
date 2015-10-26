defmodule LeagueOfLegends.ChampionTest do
  use ExUnit.Case

  alias LeagueOfLegends.Champion, as: Subject

  test "the truth" do
    assert Subject.foo == "oi"
  end

  test "process url with id" do
    assert Subject.process_url("10") ==
      "https://global.api.pvp.net/api/lol/static-data/br/v1.2/champion/10?champData=all&api_key=f214190b-18d0-498f-94d7-a186ff1a24a4"
  end

  test "process url without passing any parameter" do
    assert Subject.process_url ==
      "https://global.api.pvp.net/api/lol/static-data/br/v1.2/champion?api_key=f214190b-18d0-498f-94d7-a186ff1a24a4"
  end

end
