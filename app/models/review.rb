class Review < ActiveRecord::Base
	belongs_to :User
	belongs_to :Restaurant
end
