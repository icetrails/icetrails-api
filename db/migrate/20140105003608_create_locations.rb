class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :lat
      t.float :long
      t.timestamp :time
      t.references :event

      t.timestamps
    end
  end
end
