class Outerwear < ActiveRecord::Base

has_many :outfits
belongs_to :season
belongs_to :fit
belongs_to :color
belongs_to :fabric
belongs_to :occasion
belongs_to :designer
belongs_to :name

end
