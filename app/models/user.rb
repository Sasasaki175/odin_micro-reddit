class User < ApplicationRecord
  validates :name,
    presence: true,
    uniqueness: true,
    length: { minimum: 3, maximum: 20 }
  validates :email,
    presence: true,
    uniqueness: true,
    length: { maximum: 255 }
  validates :password,
    presence: true,
    length: { minimum: 8, maximum: 72 }

  has_many :posts
  has_many :comments
end
