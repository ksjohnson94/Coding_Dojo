class SurveyController < ApplicationController
  @@count = 0
  def index
  end

  def show
    flash[:count] = "You have submitted this #{@@count} time(s)"
  end

  def new
  end

  def create
    session[:name] = params[:name]
    session[:location] = params[:location]
    session[:language] = params[:language]
    session[:comment] = params[:comment]
    @@count += 1
    redirect_to '/show'
  end

  def update
  end

  def destroy
  end
end
