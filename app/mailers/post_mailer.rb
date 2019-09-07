class PostMailer < ApplicationMailer
  default :from => 'news@fintechhorizonsmedia.com'

  def new_fhmnews_post(post)
    @post = post
    contact = Contact.all

    @contacts.each do |contact|
      new_publication(contact,row)
    end
  end

  def new_publication(contact, row)
    @contacts = row
    mail(to: contact.email, subject: "#{contact.name}, We have a new interesting post for you...")
  end

end
    # @post = post
    # Contact.all.each do |contact|
    #   #mail( :to => "#{contact.name} <#{contact.email}>", subject: "We have a new interesting post for you...")
		# 	#or
    #   mail(to: contact.email, subject: "We have a new interesting post for you...")
    # end
#   end
# end
