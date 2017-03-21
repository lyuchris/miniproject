class AddColumnToEvents < ActiveRecord::Migration[5.0]
  def change
  	add_column :events, :title, :text
    add_column :events, :start_date, :datetime
    add_column :events, :end_date, :datetime
  end
end
