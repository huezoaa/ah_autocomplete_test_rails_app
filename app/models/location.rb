class Location < ActiveRecord::Base
  belongs_to :region
  has_many :people

  def self.in_region(region)

    # joins(:region).merge(Region.where('regions.name = ?', region))
    joins(:region).where(regions: {name: region}) #same as above, but clearer

  end
end
