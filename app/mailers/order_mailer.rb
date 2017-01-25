class OrderMailer < ActionMailer::Base 
	
	def order_created(user_email)
		mail(to: user_email,
			from: ENV["GMAIL_USERNAME"],
			subject: "Order Created",
			body: "First mailer") 
	end
end