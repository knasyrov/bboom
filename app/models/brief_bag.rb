class BriefBag < ApplicationRecord
  belongs_to :user
  has_many :wallets
end
