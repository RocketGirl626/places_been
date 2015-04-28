require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('path for places list', {:type => :feature}) do
  it('user inputs a location and its saved to the places array') do
  visit('/')
  fill_in('location', :with => 'China')
  click_button('Add location')
  expect(page).to have_content('The location')
  end
end
