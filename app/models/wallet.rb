class Wallet < ApplicationRecord
  validates :name, :eid, :symbol, presence: true

  validates :eid, uniqueness: true

  def history
    client = CoingeckoRuby::Client.new
    data = client.daily_historical_price(self.eid)

    data["prices"].map do |e|
      {
        date: Time.at(e[0] / 1000).strftime("%d.%m.%Y"),
        price: e[1]
      }
    end.reverse
  end
end
