class AddStateMachine < ActiveRecord::Migration
  def up
    add_column :Cars, :state, :string
  end

  def down
    remove_column :Cars, :state
  end
end
