class Gallery < ActiveRecord::Base
  has_many :photos
  has_many :comments, :as => :commentable
end
