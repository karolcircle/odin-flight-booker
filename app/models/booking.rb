class Booking < ActiveRecord::Base
  has_many :passengers
  belongs_to :flight


  accepts_nested_attributes_for :passengers
end
