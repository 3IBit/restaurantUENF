require 'rails_helper'
require 'capybara/rails'

feature 'Editing Menus' do
  before do
    FactoryGirl.create(:menu, date: Date.today.to_s)

    visit '/'
    click_link Date.today.to_s
    click_link 'Edit Menu'
  end

  scenario 'Updating a menu' do

    select Date.today.day, :from => 'menu_date_3i'
    select Date::MONTHNAMES[Date.today.month], :from => 'menu_date_2i'
    select Date.today.year, :from => 'menu_date_1i'

    click_button 'Update Menu'

    expect(page).to have_content('Menu has been updated.')
  end

end