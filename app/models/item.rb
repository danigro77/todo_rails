class Item < ActiveRecord::Base
  attr_accessible :name, :list
  belongs_to :list, :dependent => :destroy

  validates :name, :presence => true

end
