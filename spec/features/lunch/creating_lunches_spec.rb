require 'rails_helper'
require 'capybara/rails'

feature 'Creating Lunch' do
  before do
    FactoryGirl.create(:menu, date: Date.today.to_s)

    visit '/'
    click_link Date.today.to_s
    click_link 'New Lunch'
  end

  scenario 'can create a lunch' do

    fill_in "Salad"        , with: "Alface"
    fill_in "Accompaniment", with: "Feijão"
    fill_in "Garrison"     , with: "Espaguete ao Sugo"
    fill_in "Protein1"     , with: "Virada Paulista"
    fill_in "Protein2"     , with: "Filé de Frango Grelhado"
    fill_in "Protein3"     , with: "Almôdegas de Soja"
    fill_in "Dessert"      , with: 'Goiabada'
    fill_in "Juice"        , with: 'Laranja'

    click_button 'Create Lunch'

    expect(page).to have_content('Lunch has been created.')
  end
end