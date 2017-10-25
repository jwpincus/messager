class MessagesController < ApplicationController

  def new

  end

  def create
    Message.create!(message_params)
    redirect_to :new_message
  end

  private

  def message_params
    params.require(:message).permit(:body, :author, :postscript, :title)
  end

end
