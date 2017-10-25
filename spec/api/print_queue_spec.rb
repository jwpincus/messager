require 'rails_helper'
describe 'Api print queue', type: :api do
  before(:each) do
    @msg = Message.create(author: "jack", body: 'test', title: 'coder')
  end
  it 'returns the unprinted messages'do

    response = get '/api/messages'
    body = JSON.parse(response.body).first
    expect(body['body']).to eq(@msg.body)
    expect(body['author']).to eq(@msg.author)
    expect(body['title']).to eq(@msg.title)
  end
  it 'can mark messages as printed' do
    response = put "/api/messages/#{@msg.id}?printed=true"
    expect(response.status).to eq(200)
    expect(Message.last.printed?).to be(true)
  end
end
