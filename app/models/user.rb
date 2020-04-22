class User < ApplicationRecord
    has_many :check_ins, dependent: :destroy
    has_many :posts, dependent: :destroy
    has_many :safety_concerns, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy

    validates :name, uniqueness: true, presence: true
end
