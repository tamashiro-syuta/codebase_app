class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @current_user_post = Post.where(user_id: current_user.id)
  end

  def show
  end
end
