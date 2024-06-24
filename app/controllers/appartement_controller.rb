class AppartementController < ApplicationController
  def index
    @appartements = Appartement.all
  end

  def show
    @appartement = Appartement.find(params[:id])
  end

  private

  def appartement_params
    params.require(:appartement).permit(:address, :ville)
  end
end
