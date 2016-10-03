class User < ApplicationRecord

  has_secure_password

    validates :email, presence: true, uniqueness: true,
              format:  /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

    has_many :auctions, dependent: :destroy

    has_many :bids, dependent: :destroy

    def full_name
      "#{first_name} #{last_name}"
    end

end
