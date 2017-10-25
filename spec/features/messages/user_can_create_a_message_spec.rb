require 'rails_helper'
describe 'Message creation' do
  scenario 'User creates a new message' do
    visit '/messages/new'
    fill_in 'message[author]', with: 'Tester bob'
    fill_in 'message[body]', with: 'Test message'
    fill_in 'message[title]', with: 'King of the world'
    fill_in 'message[postscript]', with: 'I love you'
    click_on 'Save Message'
    message = Message.all.last
    expect(message.body).to eq('Test message')
    expect(message.author).to eq('Tester bob')
    expect(message.printed?).to eq(false)
  end
end
