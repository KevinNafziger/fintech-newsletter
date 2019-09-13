class PostEmailJob < ApplicationJob
  queue_as :default

  def perform(post, contact)
    # Do something later
    @post = post
    @contact = Contact.all
    PostMailer.new_fhmnews_post(@post, @contact).deliver_later
  end
end
