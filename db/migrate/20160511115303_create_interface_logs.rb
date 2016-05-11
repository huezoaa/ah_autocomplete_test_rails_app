class CreateInterfaceLogs < ActiveRecord::Migration
  def change
    create_table :interface_logs do |t|
      t.references    :patient_master
      t.text          :response_message, #formerly known as :content_file
      t.string        :response_code,
      t.datetime      :response_timestamp,
      t.string        :vendor_account,
      t.string        :vendor_id,
      t.string        :vendor_name,
      t.string        :vendor_type,
      t.string        :patient_master_uuid,
      t.string        :user_full_name,
      t.string        :user_id,
      t.string        :log
      t.timestamps null: false
    end
  end
end
