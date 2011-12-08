class Topic < ActiveRecord::Base
  belongs_to :forum
  has_many :posts, :dependent => :destroy
  
  accepts_nested_attributes_for :posts
  
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_associated :posts
  validates_presence_of :posts
end
