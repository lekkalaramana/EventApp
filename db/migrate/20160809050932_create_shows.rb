class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :event_id
      t.string :cost
      t.string :price
      t.integer :duration
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end
end
