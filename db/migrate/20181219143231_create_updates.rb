class CreateUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :updates do |t|
      t.string :title
      t.string :description
      t.string :link
      t.string :url
      t.string :photo
      t.timestamps
    end
  end
end
