class Hint < ActiveRecord::Base
  attr_accessible :content

  validates :name, :presence => true, :uniqueness => true
  validates :content, :presence => true
end