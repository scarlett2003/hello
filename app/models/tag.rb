class Tag < ActiveRecord::Base
	has_any_belongs_to_many :posts
end
