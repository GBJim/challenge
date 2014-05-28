class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.boolean :public
      t.string :title
      t.text :description
      t.integer :priceNumber
      t.string :pricePer
      t.text :whatInclude
      t.string :whatExclude
      t.integer :durationNumber
      t.string :durationUnit
      t.integer :groupSize
      t.text :availability
      t.text :additionalInfo

      t.timestamps
    end
  end
end
