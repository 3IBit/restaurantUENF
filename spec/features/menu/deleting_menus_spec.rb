require 'rails_helper'
require 'capybara/rails'

feature 'Deleting menus' do
  scenario 'Deleting a menu' do
  	FactoryGirl.create(:menu, date: Date.today.to_s)

  	visit '/menus'
  	click_link Date.today.to_s
  	click_link 'Delete Menu'

  	expect(page).to have_content('Menu has been destroyed.')
  	visit '/'

  	expect(page).to have_no_content(Date.today.to_s)
  end
end