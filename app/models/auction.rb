class Auction < ApplicationRecord

  has_many :auctions, dependent: :destroy
  has_many :users, through: :favourites

end
