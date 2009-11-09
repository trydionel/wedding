class Rsvp < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :guest_count
  
  after_create :send_notification
  
protected
  
  def send_notification
  	Notifications.deliver_new_rsvp_notification(self)
  end
end
