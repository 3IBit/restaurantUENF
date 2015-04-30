require 'rails_helper'
require 'capybara/rails'

feature 'Creating Menus' do
  scenario "Can create a menu" do
    visit '/menus'

    click_link 'New Menu'

    select Date.today.day, :from => 'menu_date_3i'
    select Date::MONTHNAMES[Date.today.month], :from => 'menu_date_2i'
    select Date.today.year, :from => 'menu_date_1i'


    click_button 'Create Menu'
    
    expect(page).to have_content(Date.today.to_s)
    expect(page).to have_content('Menu has been created.')
  end
end