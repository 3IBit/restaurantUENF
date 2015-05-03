class Lunch < ActiveRecord::Base
	belongs_to :menu, polymorphic: true
end
