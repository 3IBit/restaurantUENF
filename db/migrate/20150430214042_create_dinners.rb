class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.string :salad
      t.string :accompaniment
      t.string :garrison
      t.string :protein1
      t.string :protein2
      t.string :protein3
      t.string :dessert
      t.string :juice

      t.timestamps null: false
    end
  end
end
