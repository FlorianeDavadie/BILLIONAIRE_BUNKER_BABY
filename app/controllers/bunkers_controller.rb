class BunkersController < ApplicationController
  before_action :set_bunker, only: %i[create edit]
  before_action :authenticate_user!

  def index
    @bunkers = Bunker.all
  end

  def new
    @bunker = Bunker.new
  end

  # def show
  # end

  def create
    @bunker = Bunker.new(bunker_params)
    @bunker.user = @user
    if @bunker.save
      redirect_to bunker_path(@bunker)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @bunker.destroy
    redirect_to bunker_path(@bunker.user), status: :see_other
  end

  private

  def set_bunker
    @bunker = Bunker.find(params[:id])
  end

  def bunker_params
    params.require(:bunker).permit(:title, :description, :prix, :location)
  end
end
