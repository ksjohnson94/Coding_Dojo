class UsersController < ApplicationController
  def index
    @user = User.all
  end
  def register
    @curr_user.id = User.all
    session[:user_id] = @curr_user.id
    User.find(session[:user_id])
    redirect_to '/'
  end
  def login

  end
  # def show
  # end
  #
  # def new
  # end
  #
  # def edit
  # end
  #
  # def create
  # end
  #
  # def update
  # end
  #
  # def destroy
  # end
end
