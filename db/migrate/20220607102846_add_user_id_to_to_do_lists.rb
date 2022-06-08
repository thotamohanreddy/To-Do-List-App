class AddUserIdToToDoLists < ActiveRecord::Migration[7.0]
  def change
    add_column :to_do_lists, :user_id, :integer
    add_index :to_do_lists, :user_id
  end
end
