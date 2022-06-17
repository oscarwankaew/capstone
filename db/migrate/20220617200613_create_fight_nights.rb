class CreateFightNights < ActiveRecord::Migration[7.0]
  def change
    create_table :fight_nights do |t|
      t.integer :fighter_id
      t.integer :event_id

      t.timestamps
    end
  end
end
