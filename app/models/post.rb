class Post < ApplicationRecord
    belongs_to :user
    has_many  :likes, as: :likeable
    has_many :comments, as: :commentable
    has_many :taggables, dependent: :destroy
    has_many :tags, through: :taggables
end
