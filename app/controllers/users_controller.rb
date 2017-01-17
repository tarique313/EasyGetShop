class UsersController < ActionController::Base

  def posts
    @user = User.find(params[:id])
    @orders = @user.orders
  end

end