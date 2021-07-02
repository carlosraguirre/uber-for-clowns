class ClownsController < ApplicationController

  def create
    clown = Clown.new(
      name: params[:name],
      shoe_size: params[:shoe_size],
      specialty: params[:specialty]
    )

    if clown.save
      render json: clown
    else
      render json: {error: clown.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    clowns = Clown.all
    render json: clowns
  end
end
