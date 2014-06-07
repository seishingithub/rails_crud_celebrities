require 'spec_helper'

feature 'Manage celebrities' do
  scenario 'User can create and view celebrities' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end