class Rmcolumn < ActiveRecord::Migration
  def change
  	remove_column :details, :detail_id
  end
end
