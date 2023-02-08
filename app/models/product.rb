class Product < ApplicationRecord
	belongs_to :category
	has_many :feedback, dependent: :destroy
	has_many :order_lists
	has_one_attached :image
end
