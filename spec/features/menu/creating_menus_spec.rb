require 'rails_helper'
require 'capybara/rails'

feature 'Creating Menus' do
    before do
      visit '/'
      click_link 'New Menu'
    end
  scenario "Can create a menu" do

    select Date.today.day, :from => 'menu_date_3i'
    select Date::MONTHNAMES[Date.today.month], :from => 'menu_date_2i'
    select Date.today.year, :from => 'menu_date_1i'
    click_button 'Create Menu'

    expect(page).to have_content('Menu has been created.')
    expect(page).to have_content(Date.today.to_s)

    menu = Menu.where(date: Date.today.to_s).first
    expect(page.current_url).to eql(menu_url(menu))
  
  end
end