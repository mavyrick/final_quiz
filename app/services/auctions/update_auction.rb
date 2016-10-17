class Auctions::UpdateAuction
  include Virtus.model

    attribute :user,     User
    attribute :params,   Hash
    attribute :auction, Auction

  def call
    @auction      = Auction.new params
    @auction.user = user
    @auction = auction.publish!
  end
end
