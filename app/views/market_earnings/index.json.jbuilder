json.array!(@market_earnings) do |market_earning|
  json.extract! market_earning, :id, :date, :consumer_price_index, :dividend, :date_fraction, :long_interest_rate, :real_price, :real_dividend, :real_earnings, :cape
  json.url market_earning_url(market_earning, format: :json)
end
