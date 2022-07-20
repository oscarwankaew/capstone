class AddTimeFormatToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :time_format, :string
  end
end
