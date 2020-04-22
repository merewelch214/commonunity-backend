class Post < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy
    validates :title, length: { minimum: 3 }
    validates :summary, length: { minimum: 5 }
end
