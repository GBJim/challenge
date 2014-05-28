class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.text :when
      t.text :what

      t.timestamps
    end
  end
end
