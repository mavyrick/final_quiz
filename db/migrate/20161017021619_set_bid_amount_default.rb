class SetBidAmountDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default :bids, :bid_amount, '0'
  end
end
