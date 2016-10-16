class AuctionsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @auction = Auction.order(created_at: :desc)
  end

  def new
    @auction = Auction.new
  end

  def create

    auctions_params = params.require(:auction).permit([:title, :details, :ends_on, :reserve_price])
    @auction = Auction.create auctions_params

    if @auction.save
  # render :show
      redirect_to auction_path(@auction)
    else
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def show
    @auction = Auction.find params[:id]
    @bid = Bid.new
    @last_bid = Bid.last
    # if @auction.published? == false
    # end
  end

  def my_bids
    # @user = User.bids.order(created_at: :desc)
    @bids = current_user.bids.order(created_at: :desc)
  end

  def my_auctions
    # @user = User.bids.order(created_at: :desc)
    @auctions = current_user.auctions.order(created_at: :desc)
  end

  def update
    @auction = Auction.find params[:id]
    @auction.publish!
  end

end
