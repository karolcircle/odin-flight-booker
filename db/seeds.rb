Airport.delete_all
Flight.delete_all

airports = ['SFO', 'NYC', 'WAW', 'LUB', 'KRK']

Airport.create([{ airport_code: 'SFO' }, { airport_code: 'NYC' }, { airport_code: 'WAW' }, { airport_code: 'LUB' }, { airport_code: 'KRK' }])


dates = ['1/05/2015', '2/05/2015', '3/05/2015', '4/05/2015', '5/05/2015']


flights = 0

while(flights < 300)

    start_id = rand(1..5)
    finish_id = rand(1..5)

    if start_id != finish_id
        airport = rand(0..4)
        date = rand(0..4)
        duration = (rand(120) + 120).minutes
        Flight.create(start_id: start_id, finish_id: finish_id, start_time: dates[date], flight_duration: duration,)

    else
        flights -= 1
    end
    flights += 1
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
