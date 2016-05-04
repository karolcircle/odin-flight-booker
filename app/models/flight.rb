class Flight < ActiveRecord::Base
  belongs_to :from_airport,  class_name: "Airport", foreign_key: :start_id
  belongs_to :arriving,   class_name: "Airport"

  def self.date_list
    Flight.all.map {|n| n.start_time.strftime("%d/%m/%Y") }.uniq
  end

  def self.search(depart)
    Flight.where(start_id: depart)
  end

end
