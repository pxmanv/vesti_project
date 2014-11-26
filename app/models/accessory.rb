class Accessory < ActiveRecord::Base

has_many :outfits
belongs_to :season
belongs_to :fit
belongs_to :color
belongs_to :fabric
belongs_to :occasion
belongs_to :designer
belongs_to :name

validates :season, :presence => true
validates :fit, :presence => true
validates :color, :presence => true
validates :fabric, :presence => true
validates :occasion, :presence => true
validates :designer, :presence => true
validates :name, :presence => true

end
