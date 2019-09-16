class PostEmailJob < ApplicationJob
  queue_as :default

  def perform(post,contact)
    # Do something later
    PostMailer.post_email(post,contact)
  end
end
