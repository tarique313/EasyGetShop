class OrderMailer < ActionMailer::Base 
	
	def order_created(user_email)
		mail(to: user_email,
			from: Rails.application.secrets.gmail_username,
			subject: "Order Created",
			body: "First mailer") 
	end
end