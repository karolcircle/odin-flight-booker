Airport.delete_all
Flight.delete_all


Airport.create([{ airport_code: 'SFO' }, { airport_code: 'NYC' }, { airport_code: 'WAW' }, { airport_code: 'LUB' }])



(1..4).each do |i|
Flight.create(start_id: i, finish_id: i + 1, start_time: DateTime.now + i.days, flight_duration: 3600 * i)
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
