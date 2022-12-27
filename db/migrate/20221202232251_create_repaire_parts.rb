class CreateRepaireParts < ActiveRecord::Migration[6.1]
  def change
    create_table :repaire_parts do |t|

      t.timestamps
    end
  end
end
