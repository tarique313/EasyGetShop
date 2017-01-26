class CommentsController < ApplicationController
  before_filter :authenticate_user!



  def create
    @order = Order.find_by_id(params[:order_id])
    @comment = @order.comments.create(comments_params)
    @comment.user_id = current_user.id

    CommentMailer.comment_created(current_user, @order.user, @comment.content).deliver

    if @comment.save 
    	redirect_to order_path(@order)
    else
    	flash.now[:danger] = "Error"
    end
    #redirect_to order_path(@order)

  end


  def destroy
  	@order = Order.find(params[:order_id])
    @comment = @order.comments.find(params[:id])
    @comment.destroy
    redirect_to order_path(@order)
end

private

def comments_params
	params.require(:comment).permit(:content, :user_id, :order_id)
end
end