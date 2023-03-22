class Photo < ApplicationRecord
    has_many :comments, as: :commentable
    validates :title, presence: true
    validates :image_url, presence: true
end
