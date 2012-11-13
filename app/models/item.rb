class Item < ActiveRecord::Base
  attr_accessible :name, :list
  belongs_to :list

  validates :name, :presence => true

end
