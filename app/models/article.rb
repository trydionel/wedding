class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :as => :commentable
  has_permalink :title
  default_scope :order => "created_at DESC"
end
