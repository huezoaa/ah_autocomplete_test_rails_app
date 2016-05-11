class CreateCollaborateMdInterfaces < ActiveRecord::Migration
  def change
    create_table :collaborate_md_interfaces do |t|
      t.references  :vendor
      t.string      :facility_name    #MSH.04[0]
      t.string      :facility_id      #MSH.04[1]
      t.string      :customer_name    #MSH.06[0]
      t.string      :customer_id      #MSH.06[1]
      t.string      :provider_number  #PD1.04[0]
      t.string      :provider_last_name   #PD1.04[1]
      t.string      :provider_first_name  #PD1.04[2]
      t.string      :exchanger_attributes
      t.timestamps null: false
    end
  end
end
