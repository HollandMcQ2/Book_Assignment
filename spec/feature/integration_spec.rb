# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Dune'
    fill_in 'Author', with: 'Frank Herbert'
    fill_in 'Price', with: 8.0
    select '1965', :from => 'book_date_published_1i'
    select 'August', :from => 'book_date_published_2i'
    select '1', :from => 'book_date_published_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Dune')
    expect(page).to have_content('Frank Herbert')
    expect(page).to have_content('8.0')
    expect(page).to have_content('1965-08-01')
  end
end

#to run: rspec spec/feature/integration_spec.rb