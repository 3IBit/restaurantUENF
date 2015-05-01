class Menu < ActiveRecord::Base
	has_one :lunch, dependent: :destroy
	has_one :dinner, dependent: :destroy
end
