class AddColumnToAttendees < ActiveRecord::Migration[5.0]
  def change
  	add_column :attendees, :email, :string
  end
end
