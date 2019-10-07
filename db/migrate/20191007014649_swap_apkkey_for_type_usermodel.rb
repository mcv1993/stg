class SwapApkkeyForTypeUsermodel < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :type, :string
    remove_column :users, :api_key, :string
    remove_column :users, :admin, :boolean
    remove_column :users, :superadmin, :boolean
  end
end
