require 'rails_helper'
describe 'Message creation' do
  scenario 'User creates a new message' do
    visit '/messages/new'
    fill_in 'message[name]', with: 'Tester bob'
    fill_in 'message[body]', with: 'Test message'
    fill_in 'message[title]', with: 'King of the world'
    fill_in 'message[postscript]', with: 'I love you'
    click_on 'Save Message'
  end
end