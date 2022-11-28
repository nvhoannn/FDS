class Product < ApplicationRecord
	belongs_to :feedback
	has_many :order_lists
end
