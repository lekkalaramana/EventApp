class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :facebook_url

      t.timestamps
    end
  end
end
