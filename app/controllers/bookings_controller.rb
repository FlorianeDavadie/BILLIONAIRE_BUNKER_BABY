class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :set_bunker, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def show
    @bunker = @booking.bunker
  end

  def total_days
    self.end_date - self.start_date
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bunker = @bunker
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @booking.destroy
    redirect_to bunker_path(@booking.bunker), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price, :user, :bunker)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_bunker
    @bunker = Bunker.find(params[:bunker_id])
  end
end
