require 'rails_helper'
require 'capybara/rails'

feature 'Viewing menus' do
  scenario 'Listing all menus' do
    menu = FactoryGirl.create(:menu, date: Date.today.to_s)
    visit '/menus'

    click_link Date.today.to_s
    expect(page.current_url).to eql(menu_url(menu))
  end
end