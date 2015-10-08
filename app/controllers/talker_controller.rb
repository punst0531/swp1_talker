class TalkerController < ApplicationController
  def index
    @chats = Chat.all
  end
  
  def create
     talk = Talk.where(usertalk: params[:ask]).sample

   unless talk.nil?
      Chat.create(chat_type: "user", chat_content: talk.usertalk)
      Chat.create(chat_type: "bot", chat_content: talk.bottalk)
      redirect_to '/'
   else
      redirect_to '/learn'
   end

  end
  
  def destroy
      pp = Chat.find(params[:id])
      pp.destroy
      redirect_to :root
  end
  
end
