class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  
  after_create :send_notification
  
protected
  
  def send_notification
  	Notifications.deliver_new_comment(self)
  end
end
