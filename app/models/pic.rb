class Pic < ApplicationRecord
    belongs_to :user
    has_attached_file :image, :styles => { :normal => "100"}, :default_style => :normal
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
