class TripsController < ApplicationController
  include CurrentUserConcern

  before_action :set_trip, :set_order, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # Here, get all the trips for one given user using @current_user from current_user_concern
  def index
    @trips = Trip.where(user_id: @current_user[:id])
    render json: @trips.to_json
  end

  # GET /trips/1
  def show
    render json: @trip.to_json(include: :reservations)
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # POST /trips
  def create
    @trip = Trip.new(trip_params)
    
      if @trip.save 
        render json: @trip, status: :created, location: @trip
      else
        render json: @trip.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /trips/1
  def update
      if @trip.update(trip_params)
        render json: @trip, status: :ok, location: @trip
      else
        render json: @trip.errors, status: :unprocessable_entity
      end
  end

  # DELETE /trips/1
  def destroy
    @trip.destroy
      render json: { status: 200 }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    def set_order
      @reservations = Trip.find(params[:id]).reservations.order(:date_and_time)
    end

    # Only allow a list of trusted parameters through.
    def trip_params
      params.require(:trip).permit(:name, :start_date, :user_id)
    end
end
