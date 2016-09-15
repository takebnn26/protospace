class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name,    :string
    add_column :users, :group,   :string
    add_column :users, :profile, :text
    add_column :users, :works,   :string
  end
end
