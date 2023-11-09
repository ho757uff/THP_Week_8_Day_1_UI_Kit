class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def create
    @event = Event.find(params[:event_id])
    @attendance = @event.attendances.build(user: current_user)

    if @attendance.save
      redirect_to @event, notice: "You have successfully registered for the event."
    else
      redirect_to @event, alert: "Unable to register for the event."
    end
  end

  def destroy
    @event = Event.find(params[:event_id])
    @attendance = @event.attendances.find_by(user: current_user)
    @attendance.destroy
    redirect_to @event, notice: "You have successfully unregistered from the event."
  end

  def set_event
    @event = Event.find(params[:event_id])
  rescue ActiveRecord::RecordNotFound
    redirect_to events_path, alert: "Événement non trouvé."
  end
end
