class RemoveColums < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :superadmin
    remove_column :users,  :api_key
  end
end
