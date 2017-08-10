class FormsController < ApplicationController
  def main 
  end
  
  def create
    sur = Sur.new( name: params[:name], location: params[:location], language: params[:language], comment: params[:comment])
    if !sur.valid?
      flash[:errors] = "Invalid, please fill out form."
      redirect_to '/'
    else 
      sur.save 
      session[:user] = sur.id
      if session[:count]
        session[:count] += 1
      else
        session[:count] = 1
      end
      flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times dude."
      redirect_to "/forms/result"
    end
  end
  
  def result
    @sur = Sur.find(session[:user])

  end

end
