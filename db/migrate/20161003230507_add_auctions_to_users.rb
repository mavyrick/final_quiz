class AddAuctionsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :auction, foreign_key: true
  end
end
