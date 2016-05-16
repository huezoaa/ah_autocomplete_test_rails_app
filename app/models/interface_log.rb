class InterfaceLog < ActiveRecord::Base
    belongs_to :patient_master, autosave: true

  # attr_accessible :response_message, #formerly known as :content_file
  #                 :response_code,
  #                 :response_timestamp,
  #                 :vendor_account,
  #                 :vendor_id,
  #                 :vendor_name,
  #                 :vendor_type,
  #                 :patient_master_id,
  #                 :patient_master_uuid,
  #                 :user_full_name,
  #                 :user_id,
  #                 :log   # Paperclip

  def log_entry(log={})

    self.patient_master_id =    log[:p_master_id]
    self.response_message  =    log[:r_message]
    self.response_code =        log[:r_code]
    self.response_timestamp =   log[:r_timestamp]
    self.vendor_account =       log[:v_account]
    self.vendor_id =            log[:v_id]
    self.vendor_name =          log[:v_name]
    self.patient_master_uuid =  log[:p_master_uuid]
    self.user_full_name =       log[:u_full_name]
    self.user_id =              log[:u_id]

    puts log
    self.save
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

 {
 :p_master_id=>10, :r_message=>"El mensajito", :r_code=>"201", :r_timestamp=>"20160511",
 :v_account=>"909090909", :v_id=>"223344", :v_name=>"CMD Orlando", :v_type=>"collaborate_md",
 :p_master_uuid=>"e02aa3de-1f3b-4083-9f26-5532522b5d81", :u_full_name=>"Angel Huezo", :u_id=>"1"
 }
=end