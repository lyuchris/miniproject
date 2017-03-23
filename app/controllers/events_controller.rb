 class EventsController < ApplicationController

  before_action :authenticate_user!, :except => [:index]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    if params[:keyword]
      @events = Event.where( [ "artist like ?", "%#{params[:keyword]}%" ] )
    else
      @events = Event.all
    end

    if params[:order]
      sort_by = if params[:order]== 'event_date' 
                   'event_date ASC'
                elsif params[:order]== 'location' 
                    'location ASC'
                else
                    'id ASC'
                end
                  
      @events = @events.order(sort_by)
    end
    #@events = @events.page(params[:page]).per(3)
  end


  def show
    @page_title = @event.title
  end


  def new
    @event = Event.new
  end


  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "新增成功"

      redirect_to events_path
    else
      render :action => :new #new.html.erb
    end
  end

  def edit
  end


  def update
    if @event.update(event_params)
      flash[:notice] = "編輯成功"
      redirect_to event_path(@event)
    else
      render :action => :edit
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    flash[:alert] = "刪除成功"

    redirect_to events_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:artist, :description, :price_low, :price_high, :event_date, :information, :location, :title, :start_date, :end_date, :price, :category_id, :group_ids => [])
    end
end
