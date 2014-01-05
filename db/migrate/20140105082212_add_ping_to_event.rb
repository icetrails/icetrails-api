class AddPingToEvent < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.timestamp :pinged_at
      t.timestamp :ok_at
    end
  end
end
