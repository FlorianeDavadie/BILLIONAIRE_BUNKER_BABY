class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.new
    @bunker = Bunker.new(bunker: @bunker)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bunker = @bunker
    if @booking.save
      redirect_to bunker_path(@bunker)
    else
      @bunker = Bunker.new
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
    params.require(:booking).permit(:date_debut, :date_fin, :price, :user, :bunker)
  end

  def set_booking
    @booking = Bookmark.find(params[:id])
  end

  def set_bunker
    @bunker = Bunker.find(params[:bunker_id])
  end

end
