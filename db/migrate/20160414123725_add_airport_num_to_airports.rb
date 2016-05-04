class AddAirportNumToAirports < ActiveRecord::Migration
  def change
    add_column :airports, :airport_num, :integer
  end
end
