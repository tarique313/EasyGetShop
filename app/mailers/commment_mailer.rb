class CommentMailer < ActionMailer::Base 
	
	def comment_created(current_user, order_user, content)
	
	@user = user
	@current_user = current_user
	@order_user = order_user
	@content = content
	
	mail(to: order_user.email,
		from: Rails.application.secrets.gmail_username,
		subject: "Commment Created",
		body: "First comment mailer") 
	end
end