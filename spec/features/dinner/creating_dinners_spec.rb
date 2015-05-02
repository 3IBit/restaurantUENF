require 'rails_helper'
require 'capybara/rails'

feature 'Creating dinners' do

  before do
    FactoryGirl.create(:menu, date: Date.today.to_s)
    visit '/'
    click_link Date.today.to_s
    click_link "New Dinner"
  end

  scenario 'can create a dinner' do
 
    fill_in 'Salad'        , with: 'Alface'
    fill_in 'Accompaniment', with: 'Feijão'
    fill_in 'Garrison'     , with: 'Espaguete ao sugo'
    fill_in 'Protein1'     , with: 'Virada Paulista'
    fill_in 'Protein2'     , with: 'Filé de frango'
    fill_in 'Protein3'     , with: 'Almôdegas'
    fill_in 'Dessert'      , with: 'Goibada'
    fill_in 'Juice'        , with: 'Laranja'

    click_button 'Create Dinner'

    expect(page).to have_content('Dinner has been created.')

  end
end