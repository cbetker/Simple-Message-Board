class Forum < ActiveRecord::Base
  has_many :topics, :dependent => :destroy
  
  validates_presence_of :name
  validates_uniqueness_of :name
end
