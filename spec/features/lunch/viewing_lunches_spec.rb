require 'rails_helper'
require 'capybara/rails'

feature 'Viewing lunches' do
  before do
  	FactoryGirl.create(:menu, date: Date.today.to_s)
    visit '/'
    click_link Date.today.to_s
    click_link 'Lunch'
  end

  scenario 'viewing a lunch' do
    
  end
end