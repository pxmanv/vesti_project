class Outfit < ActiveRecord::Base

belongs_to :top
belongs_to :bottom
belongs_to :outerwear
belongs_to :shoe
belongs_to :accessory
belongs_to :user

validates :top, :presence => true
validates :bottom, :presence => true
validates :shoe, :presence => true

end
