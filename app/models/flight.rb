class Flight < ActiveRecord::Base
  belongs_to :from_airport,  class_name: "Airport", foreign_key: :start_id
  belongs_to :to_airport,   class_name: "Airport", foreign_key: :finish_id
  has_many :bookings

  def self.date_list
    Flight.all.map {|n| n.start_time.strftime("%d/%m/%Y") }.uniq
  end

  def self.search(depart)
    Flight.where(start_id: depart)
  end

end
