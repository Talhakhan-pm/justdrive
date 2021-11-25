class AddOmniauthColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string

    add_index :users, :uid
    add_index :users, [:provider, :uid]
    #Ex:- add_index("admin_users", "username")
    #Ex:- add_index("admin_users", "username")
  end
end
