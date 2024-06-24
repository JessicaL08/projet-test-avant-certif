class ReservationController < ApplicationController
  before_action :set_reservation, only: [:show]
  before_action :set_others, only: [:new, :create]

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.appartement_id = @appartement.id

    # WARNING default value
    @reservation.client_id = @client.id

    @reservation.save
    if @reservation.save
      redirect_to appartement_reservation_path(@reservation.appartement_id, @reservation.id)
    else
      puts @reservation.errors.full_messages
    end


  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_others
    @appartement = Appartement.find(params[:appartement_id])
    @client = Client.find_by(name: "Jean")
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

end
