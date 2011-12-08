class Topic < ActiveRecord::Base
  belongs_to :forum
  has_many :posts, :dependent => :destroy
  
  accepts_nested_attributes_for :posts, :reject_if => lambda { |a| a[:content].blank? }
  
  validates_presence_of :name
  validates_uniqueness_of :name
end
