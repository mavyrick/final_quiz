class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :auction

  # validate :higher_bid
  #
  # def higher_bid
  #   @bid.bid_amount > bid_amount
  # end

end
