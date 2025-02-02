module ApplicationHelper
  def crypto_to_usd(crypto)
    client = CoingeckoRuby::Client.new
    client.price(crypto, currency: :usd).try(:[], crypto).try(:[], 'usd') || 0.0
  end
end
