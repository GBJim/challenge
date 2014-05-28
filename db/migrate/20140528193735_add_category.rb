class AddCategory < ActiveRecord::Migration
  def change
  	add_column :details, :category_id, :integer
  end
end
