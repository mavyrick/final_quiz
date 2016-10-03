class Auction < ApplicationRecord

  has_many :bids, dependent: :destroy
  has_many :users, through: :bids

end
