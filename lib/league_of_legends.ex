defmodule LeagueOfLegends do
  use Application
  use HTTPoison.Base

  def start(_type, _args) do
    LeagueOfLegends.Supervisor.start_link
  end

  def process_url(resource) do
    "https://global.api.pvp.net/api/lol/static-data/br/v1.2/" <> resource
  end

  def process_response_body(body) do
    JSX.decode!(body, [{:labels, :atom}])
  end

  def perform_request(endpoint, options) do
    LeagueOfLegends.get!(endpoint, [], options).body
  end

  def key do
    # TODO env_get key
    "5cc91c61-4613-4f99-bb95-e71ee4c8428f"
  end
end
