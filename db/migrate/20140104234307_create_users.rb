class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :token
      t.boolean :subscriber

      t.timestamps
    end
  end
end