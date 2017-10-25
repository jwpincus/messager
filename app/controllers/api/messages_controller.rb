class Api::MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @messages = Message.where(printed?: false)
    render json: @messages
  end

end
