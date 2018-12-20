class AddSentToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :sent, :boolean
  end
end
