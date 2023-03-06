class Product < ApplicationRecord
  validates :image, content_type: { in: %w[image/jpeg image/gif image/png],
                 message: "must be a valid image format" },
                 size: { less_than: 5.megabytes, message: "should be less than 5MB" }
                 
  belongs_to :category
  has_many :feedback, dependent: :destroy
  has_many :order_lists
  has_one_attached :image

  def display_image
		image.variant(resize_to_limit: [150, 150])
	end
end
