class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user
      t.text :description
      t.timestamp :deadline

      t.timestamps
    end
  end
end
