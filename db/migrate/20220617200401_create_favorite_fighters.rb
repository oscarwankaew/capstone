class CreateFavoriteFighters < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_fighters do |t|
      t.integer :user_id
      t.integer :fighter_id

      t.timestamps
    end
  end
end
