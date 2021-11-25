class AddStatusColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :status, :decimal, default: 0
  end
end
