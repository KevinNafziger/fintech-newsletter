class PostEmailJob < ApplicationJob
  queue_as :default
  @contact = Contact.all

  def perform(post)
    # Do something later
    @post = post
    @contact = contact
    PostMailer.new_fhmnews_post(@post, @contact).deliver_later
  end
end
