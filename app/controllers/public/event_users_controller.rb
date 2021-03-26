class Public::EventUsersController < ApplicationController
  def index
  end

  def new
    @event_user = EventUser.new
  end

  def create
    @event_user = EventUser.new(event_user_params)
    @event_user.event_id = event_id
    if @event_user.save
      redirect_to root_path
    end
  end

  def destroy
  end

  def update
  end
  
  private
  def event_user_params
   params.permit(:user_id, :event_id)
  end
  
end
