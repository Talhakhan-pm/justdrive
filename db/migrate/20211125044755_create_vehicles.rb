class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.references :host, null: false, foreign_key: {to_table: :users}
      t.string :title, :null => false
      t.string :description
      t.string :maker
      t.string :type
      t.string :address
      t.string :city
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :lng, precision: 10, scale: 6
      t.decimal :status

      t.timestamps
    end
  end
end
