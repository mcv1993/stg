class AddIntegerIdColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :client_id, :integer
    add_column :infos, :section_id, :integer
  end
end
