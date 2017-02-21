class TimesController < ApplicationController
  def index
    if session[:count]
      session[:count] += 1
    elsif session[:count] == nil
      session[:count] = 0
    end
    @count = session[:count]
    render text: "You visited this url #{@count}" #double quotes works... single doesn't..
  end
  def restart
    session.clear
    render text: 'Destroy the session!'
  end
end
