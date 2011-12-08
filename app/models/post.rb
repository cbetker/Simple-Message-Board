class Post < ActiveRecord::Base
  belongs_to :topic
  
  validates_presence_of :content
  
  def self.get_post_count(id)
    Post.where("topic_id = ?", id).count
  end
end
