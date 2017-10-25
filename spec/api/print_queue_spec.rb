require 'rails_helper'
describe 'Api print queue', type: :api do
  it 'returns the unprinted messages'do
    msg = Message.create(author: "jack", body: 'test', title: 'coder')
    response = get '/api/messages'
    body = JSON.parse(response.body).first
    expect(body['body']).to eq(msg.body)
    expect(body['author']).to eq(msg.author)
    expect(body['title']).to eq(msg.title)
  end
end
