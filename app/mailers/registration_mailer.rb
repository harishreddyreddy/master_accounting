class RegistrationMailer < ActionMailer::Base
  default from: "no-reply@master-accounting.com.au"

  def register(params)
    @registraion_details = params
    mail(to: ENV['REGISTRATION_MAIL_ADDRESS'], subject: 'New Registration')
  end
end
