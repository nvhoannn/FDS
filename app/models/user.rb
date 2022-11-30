class User < ApplicationRecord
	has_many :orders
	has_many :feedbacks
end
