class Color < ActiveRecord::Base

has_many :tops
has_many :bottoms
has_many :outerwears
has_many :shoes
has_many :accessories

validates :color, :presence => true

end
