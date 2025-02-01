class BriefBag < ApplicationRecord
  belongs_to :user
  has_many :brief_bag_items
end
