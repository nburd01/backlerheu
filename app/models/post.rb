class Post < ApplicationRecord
    belongs_to :user
    has_many :poly_likes, as: :likeable
    has_many :comments
end
