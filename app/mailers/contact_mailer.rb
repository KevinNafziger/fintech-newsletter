class ContactMailer < ApplicationMailer
  default :from => 'news@fintechhorizonsmedia.com'

  # Send a signup email to the user, pass in the user object that contains the user's email address
  def send_signup_email(contact)
    @contact = contact
    attachments.inline["banner.png"] = File.read("#{Rails.root}/public/images/banner.PNG")
      mail( :to => "#{contact.name} <#{contact.email}>",
      :subject => 'Welcome to Fintech Horizons Media Newsletter' )
    end
end
