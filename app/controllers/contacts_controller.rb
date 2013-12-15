class ContactsController < ApplicationController
  def contact
    if ContactMailer.contact(params).deliver
      flash[:message] = "Thanks, your message has been successfully delivered. We will get in touch with you shortly."
      redirect_to :back
    else
      flash[:error] = "Sorry, there has been a problem delivering your message, please try again or contact us."
      redirect_to request.referer + '#register'
    end
  end
end