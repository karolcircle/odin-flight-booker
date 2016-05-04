class FlightsController < ApplicationController

  def index
    @airports = Airport.all.map { |a| [ a.airport_code, a.id ] }
    @passenger_number = [1, 2, 3, 4]

    @from_airport = params[:start_id]
    @flights = Flight.search(params[:start_id])

 end
end
