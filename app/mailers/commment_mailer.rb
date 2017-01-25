class CommentMailer < ActionMailer::Base 
	
	def comment_created(current_user, order_user, content)
	
	@user = user
	@current_user = current_user
	@order_user = order_user
	@content = content
	
	mail(to: order_user.email,
		from: "mahmud.tarique@gmail.com",
		subject: "Commment Created",
		body: "First comment mailer") 
	end
end