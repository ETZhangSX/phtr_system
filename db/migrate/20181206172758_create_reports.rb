class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.text :address
      t.integer :size
      t.string :location
      t.string :district
      t.integer :repair_priority
      t.integer :user_id

      t.timestamps
    end
  end
end
