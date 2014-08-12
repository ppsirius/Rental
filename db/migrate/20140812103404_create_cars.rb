class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model_id
      t.string :integer
      t.integer :mileage
      t.string :registration_no
      t.integer :year_of_manufacture

      t.timestamps
    end
  end
end
