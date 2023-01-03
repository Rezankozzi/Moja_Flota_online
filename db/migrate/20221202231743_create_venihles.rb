class CreateVenihles < ActiveRecord::Migration[6.1]
  def change
    create_table :venihles do |t|
      t.string :type, :make, :license_plate, :vin, :inspection
      t.integer :year, null: false
      t.references :insurance_policy, foreign_key: true

      t.timestamps
    end
  end
end
