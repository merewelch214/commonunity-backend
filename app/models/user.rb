class User < ApplicationRecord
    has_many :check_ins
    has_many :posts
    has_many :safety_concerns
    has_many :likes
    has_many :comments

    validates :name, uniqueness: true
end
