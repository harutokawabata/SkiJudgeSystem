class Public::EventsController < ApplicationController
  before_action :authenticate_user!, except:[:index, :show]
  def index
    @events = Event.all
    @user = current_user
    # @event = Event.current_user.id
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def new
    @events = Event.all
    @user = current_user
    @event = Event.new
  end
  
  def create
   @event = Event.new(event_params)
   @event.user_id = current_user.id
    # if current_user.event.present?
    # flash[:notice] = 'イベント申請できるのは１件のみです'
    # else
      if @event.save!
        @event.update(event_status: 3)
        flash[:notice] = 'イベントを申請しました'
        redirect_to root_path
      else
        flash[:notice] = '申請に失敗しました'
        render action: :new
      end
    # end
  end
    
  def destroy
    @event = Event.find(params[:id])
    @event.destroy!
    redirect_to events_path
  end
  
  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to events_path
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  private
  def event_params
    params.permit(:title, :event1, :event2, :event3, :event4, :event5, :capacity, :start, :finish, :advice, :introduction, :event_status, :date, :price, :category1, :category2, :category3, :category4, :category5, :method, :audience, :spj, :user_id, :admin_id)
  end
end
