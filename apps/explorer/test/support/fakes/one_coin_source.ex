defmodule Explorer.ExchangeRates.Source.OneCoinSource do
  @moduledoc false

  alias Explorer.ExchangeRates.Source
  alias Explorer.ExchangeRates.Token

  @behaviour Source

  @impl Source
  def format_data(_) do
    pseudo_token = %Token{
      available_supply: Decimal.new(10_000_000),
      total_supply: Decimal.new(10_000_000_000),
      btc_value: Decimal.new(1),
      id: "",
      last_updated: Timex.now(),
      name: "",
      market_cap_usd: Decimal.new(10_000_000),
      tvl_usd: Decimal.new(100_500_000),
      symbol: Explorer.coin(),
      usd_value: Decimal.new(1),
      volume_24h_usd: Decimal.new(1),
      image_url: nil
    }

    [pseudo_token]
  end

  @impl Source
  def source_url, do: ""

  @impl Source
  def source_url(_), do: :ignore

  @impl Source
  def secondary_source_url, do: :ignore

  @impl Source
  def headers, do: []
end
