class ContactMailer < ActionMailer::Base
  default from: "no-reply@master-accounting.com.au"

  def contact(params)
    @contact_details = params
    mail(to: ENV['CONTACT_MAIL_ADDRESS'], subject: @contact_details[:subject])
  end
end
