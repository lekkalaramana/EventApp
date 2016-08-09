class CreateEventArtists < ActiveRecord::Migration
  def change
    create_table :event_artists do |t|
      t.integer :event_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
