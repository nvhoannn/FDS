class Order < ApplicationRecord
	belongs_to :user
	has_many :order_lists, dependent: :destroy
end
