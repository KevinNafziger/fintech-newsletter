class PostMailer < ApplicationMailer
  default :from => 'news@fintechhorizonsmedia.com'

  def new_fhmnews_post(post)
    @post = post
    Contacts.all.each do |contact|
      #mail( :to => "#{contact.name} <#{contact.email}>", subject: "We have a new interesting post for you...")
			#or
      mail(to: contact.email, subject: "We have a new interesting post for you...")
    end
  end
end
