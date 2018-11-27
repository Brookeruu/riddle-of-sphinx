require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the riddle path', {:type => :feature}) do

  it('process user entry and returns a success or failure page') do
    visit('/')
    fill_in('answer0', :with => "human")
    fill_in('answer1', :with => "river")
    fill_in('answer2', :with => "map")
    click_button('Test my knowledge!')
    expect(page).to have_content("Success!")
  end
end
