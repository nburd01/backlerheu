class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post
    has_many :poly_likes, as: :likeable
end
