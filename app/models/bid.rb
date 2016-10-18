class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :auction

  # validate :higher_bid
  #
  # def higher_bid
  #   @bid > @highest_bid
  # end

# max_bid_amount = Bid.where(:id => item.id).maximum(:bid_amount)
#
# if @bid.bid_amount > max_bid_amount
#   # proceed with bid placement
# else
#   # do something, return some flag, nil or whatever
# end
#
end
