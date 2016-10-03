class AuctionsController < ApplicationController

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
  end

end
