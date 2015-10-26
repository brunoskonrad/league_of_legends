defmodule LeagueOfLegends.Champion do
  use HTTPoison.Base

  def process_url(id) do
    "https://global.api.pvp.net/api/lol/static-data/br/v1.2/champion/" <> id <> "?champData=all&api_key=f214190b-18d0-498f-94d7-a186ff1a24a4"
  end

  def process_url() do
    "https://global.api.pvp.net/api/lol/static-data/br/v1.2/champion?api_key=f214190b-18d0-498f-94d7-a186ff1a24a4"
  end

  def foo do
    "oi"
  end
end
