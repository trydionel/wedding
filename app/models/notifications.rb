class Notifications < ActionMailer::Base
	%w[comment photo rsvp].each do |type|
		define_method "new_#{type}_notification" do |object|
			setup_email
			
			subject	"New #{type.humanize}"
			body		type.to_sym => object
		end
	end

protected

	def setup_email
  	content_type	'text/html'
    recipients 		%w[trydionel@gmail.com thymebombe@yahoo.com]
    from       		'notifications@tuckerhuftwedding.com'
    sent_on    		Time.now
	end

end
