class Coin < ApplicationRecord
  validates :name, :eid, :symbol, presence: true
  
  validates :eid, uniqueness: true
end
