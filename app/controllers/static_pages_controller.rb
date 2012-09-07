class StaticPagesController < ApplicationController
	def home
      @message = Message.new
	end

	def create
      @message = Message.new(params[:message])
    
      respond_to do |format|
        if @message.valid?
          NotificationsMailer.new_message(@message).deliver
			format.html { render :home }
          	format.js
        else
          flash.now.alert = "Please complete all fields."
          render :home
        end
      end
    end

  def about
    @message = Message.new
  end
end
