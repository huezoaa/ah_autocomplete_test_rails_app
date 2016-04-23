class PayersList < ActiveRecord::Base

  # attr_accessible :kipu_insurance_id, :payer_name,
                  # :payer_synonym, :api_payer_id,
                  # :provider_id, :type  - need to add to migration


  def self.import
      update_folder = 'db/update_files/'
      import_file   = Rails.root.join(update_folder,'payers_2016-03-10.json')
      records       = JSON.parse(File.read(import_file))

      fields = {}

      records.each do |payer|
        payer['PayerSynonyms'].each do |synonym|
          fields[:kipu_insurance_id] = payer['Id']
          fields[:api_payer_id]      = payer['ApiPayerId']
          fields[:payer_name]        = payer['HealthPlanName']
          fields[:payer_synonym]     = synonym['Name']
          # puts fields
          PayersList.create(fields)
        end
      end
      puts 'Import Complete'



  end
end
