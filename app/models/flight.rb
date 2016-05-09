class Flight < ActiveRecord::Base
  belongs_to :from_airport,  class_name: "Airport", foreign_key: :start_id
  belongs_to :to_airport,   class_name: "Airport", foreign_key: :finish_id
  has_many :bookings

  def self.date_list
    dates = Flight.all.order(start_time: :asc)
    dates.map {|n| n.start_time.strftime("%d/%m/%Y") }.uniq
  end

  def self.search(depart, dest, date)
    Flight.where(start_id: depart,
     finish_id: dest,
     start_time: Flight.correct_date(date))

  end

  def self.correct_date(date)
   		unless date.nil?
   			date = date.to_date
   			date.beginning_of_day..date.end_of_day
   		end
  end

end
