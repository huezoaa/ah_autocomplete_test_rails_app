class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string      :company_name
      t.string      :vendor_type
      t.boolean     :vendor_status, null: :false, default: true
      t.timestamps null: false
    end
  end
end
