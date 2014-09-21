class Review < ActiveRecord::Base
	belongs_to :User
	belongs_to :Restaurant
	default_scope -> {order('created_at DESC')}
end
