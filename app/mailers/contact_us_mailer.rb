class ContactUsMailer < ApplicationMailer
    default :from => ENV['email']

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_contact_us_email(name, number, email, message)
    @name = name
    @number = number
    @email = email
    @message = message
    mail( :to => ENV['send_email'],
        :subject => 'Mailing from contact us page user email address is #{params[:em]}' )
  end
end
