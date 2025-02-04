module ApplicationHelper
  def crypto_to_usd(crypto)
    client = CoingeckoRuby::Client.new
    price = client.price(crypto, currency: :usd).try(:[], crypto).try(:[], "usd") || 0.0
    if price == 0.0
      price = $redis.get(crypto)&.to_f || 0.0
    else
      $redis.set(crypto, price)
    end
    price
  end

  def formatted_coins(wallets)
    sum = 0.0
    entries = wallets.map do |w|
      price = crypto_to_usd(w.eid)
      total = price * (w&.value || 0.0)
      sum += total
      {
        object: w,
        formatted_price: number_to_currency(price, precision: 6),
        formatted_total: number_to_currency(total)
      }
    end
    {
      entries: entries,
      total: number_to_currency(sum)
    }
  end
end
