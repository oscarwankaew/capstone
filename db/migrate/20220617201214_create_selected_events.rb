class CreateSelectedEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :selected_events do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end