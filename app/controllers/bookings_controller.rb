class BookingsController < ApplicationController

  def create
    booking = Booking.new(
      price: params[:price],
      length: params[:length],
      user_id: params[:user_id],
      clown_id: params[:clown_id],
      date: Time.now
    )

    if booking.save
      render json: booking
    else
      render json: {error: booking.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    booking = Booking.find_by(params[:id])

    booking.destroy
    json_booking = booking.as_json
    json_booking[:message] = "you have deleted the following item"
  end
end
