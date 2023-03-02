class BunkersController < ApplicationController
  before_action :set_bunker, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @bunkers = Bunker.all
    # @bunkers = policy_scope(Bunker)
  end

  def new
    @bunker = Bunker.new
    # authorize @bunker
  end

  def show
    # authorize @bunker
  end

  def create
    @bunker = Bunker.new(bunker_params)
    @bunker.user = current_user
    #  authorize @bunker
    if @bunker.save
      redirect_to bunkers_path(@bunker)
    else
      render :new
    end
  end

  def update
    @bunker.update(bunker_params)
    redirect_to bunker_path(@bunker)
    #  authorize @bunker
  end

  def edit
  #  authorize @bunker
  end

  def destroy
    @bunker.destroy!
    #  authorize @bunker
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
