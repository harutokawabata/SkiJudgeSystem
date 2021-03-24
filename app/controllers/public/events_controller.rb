class Public::EventsController < ApplicationController
  before_action :authenticate_user!, except:[:index, :show]
  def index
    @events = Event.all
    # @event = Event.current_user.id
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def new
    @events = Event.all
    @user = current_user.id
  end
  
  def create
   @event = Event.new(event_params)
   @event.user_id = current_user.id
    # if current_user.event.present?
    # flash[:notice] = 'イベント申請できるのは１件のみです'
    # else
    
    # e = Event.find_by(user_id: current_user.id)
    if @event.user_id.present?
      if @event.save!
        @event.update(event_status: 3)
        flash[:notice] = 'イベントを申請しましたyo'
        redirect_to root_path
      else
        flash[:notice] = '申請に失敗しました'
        render action: :new
      end
    else
      flash[:notice] = 'イベント申請は１件までです'
      redirect_to events_path
    end
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
    params.permit(:event_user, :title, :event1, :event2, :event3, :event4, :event5, :capacity, :start, :finish, :advice, :introduction, :event_status, :date, :price, :category1, :category2, :category3, :category4, :category5, :method, :audience, :spj, :user_id, :admin_id, :user_id, :event_id, { :event_ids=> [] })
  end
end
