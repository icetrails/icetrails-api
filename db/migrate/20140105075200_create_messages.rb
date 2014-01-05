class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :identifier
      t.string :from
      t.timestamp :time
      t.string :text
      t.boolean :processed

      t.timestamps
    end
  end
end
