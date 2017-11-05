class MessagesController < ApplicationController

  def index
    
  end

  def new

  end

  def create
    Message.create!(message_params)
    flash[:success] = "Your message has been saved, proofread, and approved for immediate transmission!"
    redirect_to action: :index
  end

  private

  def message_params
    params.require(:message).permit(:body, :author, :postscript, :title, :signature)
  end

end
