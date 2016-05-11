class CollaborateMdInterface < ActiveRecord::Base
  belongs_to :vendor, conditions: "vendor_type = 'collaborate_md'"
  attr_accessible :facility_name,  #MSH.04[0]
                  :facility_id,    #MSH.04[1]
                  :customer_name,  #MSH.06[0]
                  :customer_id,    #MSH.06[1]
                  :provider_number,      #PD1.04[0]
                  :provider_last_name,   #PD1.04[1]
                  :provider_first_name,  #PD1.04[2]
                  :exchanger_attributes
end
