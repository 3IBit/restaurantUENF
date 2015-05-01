require 'rails_helper'
require 'capybara/rails'

feature 'Viewing dinners' do
    before do
  	FactoryGirl.create(:menu, date: Date.today.to_s)
    visit '/'
    click_link Date.today.to_s
  end

  scenario 'Listing all dinners' do

  end
end