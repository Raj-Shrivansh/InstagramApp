class Pic < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_one_attached :main_image
end
