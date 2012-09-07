class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@kyleries.com"
  default :to => "kyle.ries@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "A New Message From [KyleRies.com]")
  end
end
