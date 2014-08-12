class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :client_id
      t.integer :car_id

      t.timestamps
    end
  end
end
