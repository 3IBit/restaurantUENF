class Dinner < ActiveRecord::Base
	belongs_to :menu, polymorphic: true
end