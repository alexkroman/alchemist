class Formula < ActiveRecord::Base
  validates_presence_of :name
  acts_as_tree :order => "id"
end
