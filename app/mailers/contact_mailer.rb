class ContactMailer < ApplicationMailer
  default :from => 'news@fintechhorizonsmedia.com'

  # Send a signup email to the user, pass in the user object that contains the user's email address
  def send_signup_email(contact)
    @contact = contact
      mail( :to => @contact.email,
      :subject => 'Welcome to Fintech Horizons Newsletter' )
    end
end
