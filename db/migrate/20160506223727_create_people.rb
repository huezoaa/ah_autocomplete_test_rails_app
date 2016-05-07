class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, null: false
      # t.integer :role_id, null: false
      t.integer :location_id
      t.integer :manager_id
      # t.integer :salary, null: false

      t.timestamps null: false
    end
  end
end