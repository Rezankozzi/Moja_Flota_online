# frozen_string_literal: true

class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :title, :status, :notes
      t.references :venihle, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
