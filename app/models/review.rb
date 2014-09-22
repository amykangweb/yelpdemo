class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant
	default_scope -> {order('created_at DESC')}
	validates :rating, :comment, presence: true
	validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5,
		message: "can only be a whole number between 1 and 5."}
	validates :user_id, uniqueness: {:scope => :restaurant_id, message: "may only write one review per restaurant."}
end
