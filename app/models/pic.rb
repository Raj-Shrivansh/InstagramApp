class Pic < ApplicationRecord
    belongs_to :user
    has_many :likes,dependent: :destroy
    has_one_attached :main_image
end
