class RecievedMailer < ActionMailer::Base 
	
	def product_recieved(user)
	@user = user
	mail(to: user.email,
		from: "mahmud.tarique@gmail.com",
		subject: "Order Created",
		body: "First mailer") 
	end
end