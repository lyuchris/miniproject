class EditVote < ActiveRecord::Migration[5.0]
  def change
  	add_column :votes, :ad_id, :integer
  	remove_column :votes, :topic_id
  	
  end
end
