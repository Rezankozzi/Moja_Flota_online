# frozen_string_literal: true

class CreateRepaireParts < ActiveRecord::Migration[6.1]
  def change
    create_table :repaire_parts do |t|
      t.string :title, :number_cat
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
