class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :auction

  validate :higher_bid

  def higher_bid
    other_bids = self.auction.bids
    unless(self.bid_amount > other_bids.maximum("bid_amount").to_f)
      self.errors.add(:higher_bid, "must be higher than maximum")
    end
  end

# class MyValidator < ActiveModel::Validator
#   def higher_bid(bid)
#     unless bid.bid_amount > bid.maximum("bid_amount")
#       bid.errors[:bid_amount]
#     end
#   end
#
# end

  # validate :bid_amount
  #
  # def higher_bid
  #   bid.bid_amount > bid.maximum("bid_amount")
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
