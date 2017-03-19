class DropAdsTable < ActiveRecord::Migration[5.0]
  
  def up
    drop_table :ads
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
