require 'spec_helper'

feature 'Manage celebrities' do
  scenario 'User can create and view celebrities' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a celebrity'
    fill_in 'Name', with: 'Tom Cruise'
    fill_in 'Job', with: 'actor'
    click_on 'Add celebrity'
    expect(page).to have_content 'Tom Cruise'
    expect(page).to have_content 'actor'
  end
end