namespace :coingecko do
  desc "Import from coingecko available coin types"
  task import: :environment do
    client = CoingeckoRuby::Client.new
    coins_list = client.coins_list
    coins_list.each do |c|
      Coin.find_or_create_by(eid: c["id"]) do |coin|
        coin.symbol = c["symbol"]
        coin.name = c["name"]
      end
      putc "."
    end

    puts "\n#{Coin.count} coins loaded"
  end
end
