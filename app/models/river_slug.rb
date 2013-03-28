class RiverSlug < ActiveRecord::Base
  attr_accessible :river_id, :slug

  extend FriendlyId
  belongs_to :river
  friendly_id :name, use: [:slugged, :history]

end
