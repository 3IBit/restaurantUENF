class RemoveLunchIdFromMenus < ActiveRecord::Migration
  def change
    remove_column :menus, :lunch_id
    remove_column :menus, :dinner_id
  end
end
