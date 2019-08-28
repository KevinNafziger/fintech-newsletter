class ContactMailer < ApplicationMailer
  default :from => 'news@fintechhorizonsmedia.com'

  # Send a signup email to the user, pass in the user object that contains the user's email address
  def send_signup_email(contact)
    @contact = contact
    attachments["fhm-logo-transparent_sm.png"] = File.read("#{Rails.root}/public/images/fhm-logo-transparent_sm.png")
      mail( :to => "#{contact.name} <#{contact.email}>",
      :subject => 'Welcome to Fintech Horizons Newsletter' )
    end
end
