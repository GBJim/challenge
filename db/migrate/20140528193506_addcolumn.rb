class Addcolumn < ActiveRecord::Migration
  def change
  	add_column :programs, :detail_id, :integer
  end
end
