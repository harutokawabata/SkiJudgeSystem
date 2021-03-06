class Admins::EventsController < ApplicationController
  def new
    @events = Event.all
  end

  def edit
  end
  
  def show
    @event = Event.find(params[:id])
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
    @event.admin_id = current_admin.id
  
    if @event.save!
      @event.update(event_status: 1)
      redirect_to root_path
    else
      flash[:notice] = '投稿に失敗しました'
      render action: :new
    end
  end

  def update
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      redirect_to root_path
    end
  end
  
  private
  def event_params
    params.permit(:title, :event1, :event2, :event3, :event4, :event5, :capacity, :start, :finish, :advice, :introduction, :event_status, :date, :price, :category1, :category2, :category3, :category4, :category5, :method, :audience, :spj, :admin_id)
  end
end
