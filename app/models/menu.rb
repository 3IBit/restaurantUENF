class Menu < ActiveRecord::Base
	has_one :lunches, dependent: :destroy
	has_one :dinners, dependent: :destroy
end
