class Contact < ApplicationRecord
  validates :name,
            :email, presence: true
  validates :email,
            uniqueness: true,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

  has_many :publications
  has_many :posts, through: :publications
end
