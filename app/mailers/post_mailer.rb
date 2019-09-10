class PostMailer < ApplicationMailer
  default :from => 'news@fintechhorizonsmedia.com'

  def new_fhmnews_post(post, contact)
    @post = post
    @contact = contact
    
    Contact.find_each do |contact|
      attachments.inline["banner.png"] = File.read("#{Rails.root}/public/images/banner.PNG")
      mail(to: contact.email, subject: "#{contact.name}, We have a new interesting post for you...").deliver
    end
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
