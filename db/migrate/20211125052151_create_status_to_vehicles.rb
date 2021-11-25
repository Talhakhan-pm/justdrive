class CreateStatusToVehicles < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :status, :decimal, :default => 0
  end
end
