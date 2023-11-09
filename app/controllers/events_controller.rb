class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :check_organizer, only: [:edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to @event, notice: "L'événement a été créé avec succès."
    else
      render "new"
    end
  end

  def edit
    # @event est déjà défini par set_event
  end

  def update
    # @event est déjà défini par set_event
    if @event.update(event_params)
      redirect_to @event, notice: "L'événement a été mis à jour avec succès."
    else
      render "edit"
    end
  end

  def destroy
    # @event est déjà défini par set_event
    @event.destroy
    redirect_to events_path, notice: "L'événement a été supprimé avec succès."
  end

  private

  def set_event
    @event = Event.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to events_path, alert: "Événement non trouvé."
  end

  def check_organizer
    redirect_to events_path, alert: "Vous n'êtes pas autorisé à modifier cet événement." unless @event.organizer == current_user
  end

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :duration, :price, :location)
  end
end
