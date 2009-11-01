class Photo < ActiveRecord::Base
  belongs_to :gallery
  has_many :comments, :as => :commentable
  has_attached_file :image,
    :styles => { :thumbnail => "100x100>", :large => "800x600>"},
    :convert => { :all => "-auto-orient" },
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => ":attachment/:id/:style.:extension",
    :bucket => "wedding_photos"
    
  validates_attachment_presence :image
  #validates_attachment_content_type :image, :content_type => %w[ application/jpeg application/jpg application/gif application/x-png ]
  
  named_scope :approved, :conditions => { :approved => true }
  
  def approve!
    update_attribute(:approved, true)
    save!
  end
end
