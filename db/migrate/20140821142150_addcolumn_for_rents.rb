class AddcolumnForRents < ActiveRecord::Migration
  def change

    add_column :rents, :plan_return_date, :date
    add_column :rents, :return_date, :date
    add_column :rents, :open, :boolean, :default => true

  end
end
