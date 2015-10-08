class LearnController < ApplicationController
  def index
  end
  
  def create
      Talk.create(usertalk: params[:ask], bottalk: params[:answer])
      redirect_to '/learn'
  end
  
end
