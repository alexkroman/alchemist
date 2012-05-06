class LineItem < ActiveRecord::Base
  belongs_to :material
  belongs_to :formula
  belongs_to :unit
  validates_numericality_of :quantity  
end
