class RoutesController < ApplicationController
  def index
    render text: "What do you want me to day?"
  end

  def new
  end

  def hello
  end

  def say
  end

  def times
    session[:count] ||= 0 
    render text: "You have visited this url #{session[:count] += 1} time(s)"
  end

  def restart
    clear_session
    render text: "Destroyed Session"
  end
end
