class AddMenuIdToDinner < ActiveRecord::Migration
  def change
    add_column :dinners, :menu_id, :integer
  end
end
