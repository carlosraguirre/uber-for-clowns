class BookingsController < ApplicationController

  def create
    booking = Booking.new(
      price: params[:price],
      length: params[:length],
      user_id: params[:user_id],
      clown_id: params[:clown_id],
      date: params[:date],
    )

    if booking.save
      render json: booking
    else
      render json: {error: booking.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
