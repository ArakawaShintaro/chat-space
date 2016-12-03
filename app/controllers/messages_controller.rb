class MessagesController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    @message = Message.new
  end
end
