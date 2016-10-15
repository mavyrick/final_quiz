class Auction < ApplicationRecord
  include AASM

  belongs_to :user
  has_many :bids, dependent: :destroy

aasm do
  state :draft, initial: true
  state :published
  state :reserve_met
  state :won
  state :cancelled
  state :reserve_not_met

  event :publish do
   transitions from: :draft, to: :published
 end

 event :reserve_met do
   transitions from: :reserve_not_met, to: :reserve_met
 end

 event :won do
   transitions from: :published, to: :won
 end

 event :cancelled do
   transitions from: :published, to: :cancelled
 end

 event :reserve_not_met do
   transitions from: :published, to: :reserve_not_met
 end

end

end
