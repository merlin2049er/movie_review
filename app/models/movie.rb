class Movie < ApplicationRecord

	has_attached_file :image, styles: { medium: "400x600#", thumbnail: "100x200#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


	belongs_to :user
end
