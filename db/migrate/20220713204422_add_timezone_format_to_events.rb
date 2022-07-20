class AddTimezoneFormatToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :timezone_format, :string
  end
end
