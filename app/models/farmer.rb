#class Farmer < ApplicationRecord
   # has_many :animals
#end

class Farmer < ApplicationRecord
   has_many :animals, dependent: :destroy
   accepts_nested_attributes_for :animals, allow_destroy: true
   belongs_to :farm
end
   