class Topic < ActiveRecord::Base
  belongs_to :forum
  has_many :posts, :dependent => :destroy
  
  validates_presence_of :name
  validates_uniqueness_of :name
end
