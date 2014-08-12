class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.string :document_no
      t.string :document_type

      t.timestamps
    end
  end
end
