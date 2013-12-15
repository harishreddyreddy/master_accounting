class RegistrationsController < ApplicationController
  def register
    if RegistrationMailer.register(params).deliver
      flash[:message] = "Thanks, your registration has been successful. We will get in touch with you shortly."
      redirect_to :back
    else
      flash[:error] = "Sorry, there has been a problem registering, please try again or contact us."
      redirect_to request.referer + '#register'
    end
  end
end