class Admins::EventsController < ApplicationController
  def new
    @events = Event.all
  end

  def edit
  end
  
  def index
    @event = Event.new
    @events = Event.all 
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      flash[:notice] = '投稿に失敗しました'
    end
    
  end

  def update
  end

  def destroy
  end
  
  private
  def event_params
    params.require(:event).permit(:title, :event1, :event2, :event3, :event4, :event5, :capacity, :start, :finish, :advice)
  end
end
