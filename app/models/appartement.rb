class Appartement < ApplicationRecord
  has_many :reservations

  def create
    @appartement = Appartement.new(appartement_params)
    if @appartement.save
      redirect_to @appartement
    else
      render 'new'
    end
  end
end
