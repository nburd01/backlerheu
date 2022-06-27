class PolyComment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :poly_likes, as: :likeable
  has_many :poly_comments, as: :commentable
end