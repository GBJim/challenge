class AddColumnToTable < ActiveRecord::Migration
  def self.up
  	add_column :details, :detail_id, :integer
  end
    def self.down
  	remove_column :details, :detail_id, :integer
  end
end
