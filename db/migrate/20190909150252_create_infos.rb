class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.string :infotitle
      t.text :description
      t.timestamps
    end
  end
end
