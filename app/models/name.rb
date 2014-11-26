class Name < ActiveRecord::Base

has_many :tops
has_many :bottoms
has_many :outerwears
has_many :shoes
has_many :accessories

validates :name, :presence => true

end
