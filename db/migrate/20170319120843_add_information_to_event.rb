class AddInformationToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :information, :text
    add_column :events, :location, :string
  end
end
