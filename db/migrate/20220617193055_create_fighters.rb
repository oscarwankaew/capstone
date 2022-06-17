class CreateFighters < ActiveRecord::Migration[7.0]
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :age
      t.string :height
      t.string :weight
      t.string :reach
      t.string :stance
      t.string :image
      t.string :video
      t.string :win
      t.string :loss
      t.string :draw
      t.string :organization

      t.timestamps
    end
  end
end
