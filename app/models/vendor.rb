class Vendor < ActiveRecord::Base
  has_one :collaborate_md_interface,
  dependent: :destroy

  attr_accessible
  :company_name,
  :vendor_status,
  :vendor_type,

end
