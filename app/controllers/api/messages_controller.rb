class Api::MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @messages = Message.where(printed?: false)
    render json: @messages
  end

  def update
    if params[:printed] == 'true'
      msg = Message.find(params[:id])
      msg.update_column :printed?, true
      msg.save
      render json: {
        status: :ok,
        message: "Successfully marked message as printed",
        }.to_json
    else
      render json: {
        status: 204,
        message: "Didn't do shit",
      }.to_json
    end
  end

end
