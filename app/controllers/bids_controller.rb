class BidsController < ApplicationController

  def create
    @auction          = Auction.find params[:auction_id]
    comment_params = params.require(:bid).permit(:bid_amount)
    @bid       = Comment.new comment_params
    @bid.auction  = @auction
    if @bid.save
      redirect_to auction_path(@auction), notice: "Bid created"
    else
      render "/auctions/show"
    end
  end
end
