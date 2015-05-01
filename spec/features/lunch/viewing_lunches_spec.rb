require 'rails_helper'
require 'capybara/rails'

feature 'Viewing lunches' do
  scenario 'viewing a lunch' do
    visit '/lunches'

    click_link 'New Lunch'

    
  end
end