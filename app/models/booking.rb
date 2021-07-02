class Booking < ApplicationRecord
  def convert_date
    date = Date.parse(params[:date])
    date.strftime("%a, %d %b %Y %H:%M:%S GMT")
  end
end
