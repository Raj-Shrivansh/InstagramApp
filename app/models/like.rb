class Like < ApplicationRecord
  belongs_to :pic
  belongs_to :user

  validates :user_id, uniqueness: {accept: :pic_id}
end
