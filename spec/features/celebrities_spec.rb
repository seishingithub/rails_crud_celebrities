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

  scenario 'User can edit and update celebrities' do
    visit '/'
    click_on 'Add a celebrity'
    fill_in 'Name', with: 'Tom Cruise'
    fill_in 'Job', with: 'actor'
    click_on 'Add celebrity'
    expect(page).to have_content 'Tom Cruise'
    expect(page).to have_content 'actor'
    click_on 'Tom Cruise'
    expect(page).to have_content 'Tom Cruise'
    expect(page).to have_content 'actor'
    click_on 'Edit'
    fill_in 'Name', with: 'Shirley Temple'
    fill_in 'Job', with: 'actress'
    click_on 'Update celebrity'
    expect(page).to have_content 'Shirley Temple'
    expect(page).to have_content 'actress'
  end

  scenario "User can delete celebrity" do
    visit '/'
    click_on 'Add a celebrity'
    fill_in 'Name', with: 'Tom Cruise'
    fill_in 'Job', with: 'actor'
    click_on 'Add celebrity'
    expect(page).to have_content 'Tom Cruise'
    expect(page).to have_content 'actor'
    click_on 'Tom Cruise'
    expect(page).to have_content 'Tom Cruise'
    expect(page).to have_content 'actor'
    click_on 'Delete celebrity'
    expect(page).to have_no_content 'Tom Cruise'
    expect(page).to have_no_content 'actor'
  end
end