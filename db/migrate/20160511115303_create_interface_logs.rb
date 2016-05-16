class CreateInterfaceLogs < ActiveRecord::Migration
  def change
    create_table :interface_logs do |t|
      t.references    :patient_master
      t.text          :response_message #formerly known as :content_file
      t.string        :response_code
      t.datetime      :response_timestamp
      t.string        :vendor_account
      t.string        :vendor_id
      t.string        :vendor_name
      t.string        :vendor_type
      t.string        :patient_master_uuid
      t.string        :user_full_name
      t.string        :user_id
      t.string        :log
      t.timestamps null: false
    end
  end
end

=begin
{
 :patient_master_id=>10,
 :response_message=>"El mensajito",
 :response_code=>"201",
 :response_timestamp=>"20160511",
 :vendor_account=>"909090909",
 :vendor_id=>"223344",
 :vendor_name=>"CMD Orlando",
 :vendor_type=>"collaborate_md",
 :patient_master_uuid=>"e02aa3de-1f3b-4083-9f26-5532522b5d81",
 :user_full_name=>"Angel Huezo",
 :user_id=>"1"
 }
=end
