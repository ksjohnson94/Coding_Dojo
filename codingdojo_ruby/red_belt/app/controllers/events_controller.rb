class EventsController < ApplicationController
  def index
    @user = User.all
    
  end

  def show
  end

  def new
    session[:user_id] = @curr_user.id
    User.find(session[:user_id])

  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  # def users:references
  # end
end
