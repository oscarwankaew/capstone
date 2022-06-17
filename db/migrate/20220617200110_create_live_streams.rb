class CreateLiveStreams < ActiveRecord::Migration[7.0]
  def change
    create_table :live_streams do |t|
      t.string :url
      t.integer :event_id

      t.timestamps
    end
  end
end
