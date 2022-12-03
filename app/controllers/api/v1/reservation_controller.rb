class Api::V1::ReservationController < ApplicationController

    def index
        @reservations= Reservation.all
        render json: @reservations
    end

    def create
        @reservation= Reservation.create(reservation_params)
        @reservation.user_id = current_user.id

        if @reservation.save
            render json: @reservation , status: :created
       else
            render json: @reservation.errors , status: :unprocessable_entity
       end
     
    end

    def show
        @reservation = Reservation.find(params[:id])
        render json: @reservation 
    end

    def destroy
        @reservation = Reservation.find(params[:id])
        @reservation.delete
    end

    def reservation_params
        params.require(:reservation).permit(:city , :date , :car_id )
    end
end
