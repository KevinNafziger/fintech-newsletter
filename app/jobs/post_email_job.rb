class PostEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @post = post
    @contact = contact
    # Do something later
    PostMailer.new_fhmnews_post(@post, @contact).deliver_later
  end
end
