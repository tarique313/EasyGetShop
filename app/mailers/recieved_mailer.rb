class RecievedMailer < ActionMailer::Base 
	
	def product_recieved(user)
	@user = user
	mail(to: user.email,
		from: Rails.application.secrets.gmail_username,  
		subject: "Product Rcieved",
		body: "First mailer") 
	end
end