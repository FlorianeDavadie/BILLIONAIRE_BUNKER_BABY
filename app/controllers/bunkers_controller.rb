class BunkersController < ApplicationController
  before_action :set_bunker, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @bunkers = Bunker.all
  end

  def new
    @bunker = Bunker.new
  end

  def show
  end

  def create
    @bunker = Bunker.new(bunker_params)
    @bunker.user = current_user
    if @bunker.save
      redirect_to bunkers_path(@bunker)
    else
      render :new
    end
  end

  def update
    @bunker.update(bunker_params)
    redirect_to bunker_path(@bunker)
  end

  def edit
  end

  def destroy
    @bunker.destroy!
    redirect_to bunkers_path(@bunker.user), status: :see_other
  end

  private

  def set_bunker
    @bunker = Bunker.find(params[:id])
  end

  def bunker_params
    params.require(:bunker).permit(:title, :description, :prix, :location, :photo, :user)
  end
end
