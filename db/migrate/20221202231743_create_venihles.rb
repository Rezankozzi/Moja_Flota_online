class CreateVenihles < ActiveRecord::Migration[6.1]
  def change
    create_table :venihles do |t|
      t.string :catagory, :producent, :license_plate, :vin
      t.integer :year

      t.datetime :waznosc_badanie_techniczne, :waznosc_ubespeczenie
    end
  end
end
