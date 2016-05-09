class FlightsController < ApplicationController

  def index
    @airports = Airport.all.map { |a| [ a.airport_code, a.id ] }
  
    @passenger_number = [1, 2, 3, 4]

    @start_time = params[:start_time]
    @from_airport = params[:start_id]
    @to_airport = params[:finish_id]

    @passengers = params[:passengers]
    @flights = Flight.search(params[:start_id],
                             params[:finish_id],
                             params[:start_time])

 end

end
