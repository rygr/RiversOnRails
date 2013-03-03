class River < ActiveRecord::Base
  attr_accessible :name, :slug

  extend FriendlyId
  friendly_id :name, use: :slugged
end
