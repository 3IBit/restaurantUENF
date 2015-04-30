class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.date :date
      t.integer :lunch_id
      t.integer :dinner_id

      t.timestamps null: false
    end
  end
end
