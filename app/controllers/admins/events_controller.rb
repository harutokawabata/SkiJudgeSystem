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
    if params[:date]
      year = params[:date][:year].to_i 
      month = params[:date][:month].to_i 
      day = params[:date][:day].to_i
    else
      year = Time.now.year.to_i
      month = Time.now.month.to_i
      day = Time.now.day.to_i
    end

    @date = Time.mktime(year,month,day)
    if @event.save
      redirect_to root_path
    else
      flash[:notice] = '投稿に失敗しました'
      render action: :new
    end
  end

  def update
  end

  def destroy
  end
  
  private
  def event_params
    params.permit(:title, :event1, :event2, :event3, :event4, :event5, :capacity, :start, :finish, :advice, :introduction)
  end
end
