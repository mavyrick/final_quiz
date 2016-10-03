class AddBidstoUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :bid, foreign_key: true
  end
end
