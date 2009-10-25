class Photo < ActiveRecord::Base
  belongs_to :gallery
  has_many :comments, :as => :commentable
  has_attached_file :image,
    :styles => { :thumbnail => "100x100>", :large => "800x600>"},
    :convert_options => { :thumbnail => "-strip", :large => "-strip" } 
    
  validates_attachment_presence :image
  #validates_attachment_content_type :image, :content_type => %w[ application/jpeg application/jpg application/gif application/x-png ]
  
  named_scope :approved, :conditions => { :approved => true }
end
