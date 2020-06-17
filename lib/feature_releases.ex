defmodule FeatureReleases do
  def fetch_github_data do
    HTTPoison.get!("https://api.github.com", headers(:github))
  end

  def headers(:github) do
    [Authorization: "bearer #{github_token}, "Accept: "application/vnd.github.v3+json"]
  end

  def github_token do
    nil
  end

end
