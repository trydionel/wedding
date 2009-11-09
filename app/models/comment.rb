class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  
  after_create :send_notification
  
  def highlight?
  	(author =~ /jeff/i && email =~ /trydionel/i) || (author =~ /alayna/i && email =~ /thymebombe/i)
  end
  
protected
  
  def send_notification
  	Notifications.deliver_new_comment_notification(self)
  end
end
