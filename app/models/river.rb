class River < ActiveRecord::Base
  attr_accessible :name, :slug

  extend FriendlyId
  has_many :river_slugs
  friendly_id :name, use: :slugged
end
