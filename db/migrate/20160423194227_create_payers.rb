class CreatePayers < ActiveRecord::Migration
  def change
    create_table :payers do |t|
      t.string :kipu_insurance_id
      t.string :payer_name
      t.string :payer_synonym
      t.string :api_payer_id

      t.timestamps null: false
    end
  end
end
