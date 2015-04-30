require 'rails_helper'
require 'capybara/rails'

feature 'Creating Menus' do
  scenario "Can create a menu" do
    visit '/menus'

    click_link 'New Menu'

    select_date(Date.today, from:published_date)

    click_button 'Create Menu'

    expect(page).to have_content('Menu has been created.')
  end
end