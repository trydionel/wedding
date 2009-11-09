class Gallery < ActiveRecord::Base
  has_many :photos
  has_many :comments, :as => :commentable
  
  def preview_thumbnail_url
    unless photos.empty?
      photos.first.image.url(:thumbnail)
    else
      "missing.png"
    end
  end
end
