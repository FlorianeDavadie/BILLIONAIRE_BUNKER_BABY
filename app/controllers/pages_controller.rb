class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @bunkers = Bunker.all
  end

  def profil
    @bunkers = Bunker.where(user: current_user)
  end
end
