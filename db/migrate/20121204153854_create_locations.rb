class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.timestamp :time
      t.string :conference_room

      t.timestamps
    end
  end
end
