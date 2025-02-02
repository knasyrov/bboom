namespace :coingecko do
  desc 'Import from coingecko available coin types'
  task :import => :environment do
    client = CoingeckoRuby::Client.new
    coins_list = client.coins_list
    coins_list.each do |c|
      Coin.create(eid: c['id'], symbol: c['symbol'], name: c['name'])
      putc '.'
    end
  end
end