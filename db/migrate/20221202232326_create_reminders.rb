class CreateReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :reminders do |t|
      t.string :title
      t.references :author, foreign_key: true
      t.references :venihle, foreign_key: true

      t.timestamps
    end
  end
end
