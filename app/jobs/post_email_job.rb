class PostEmailJob < ApplicationJob
  queue_as :default

  def perform(post,contact)
    # Do something later
    PostMailer.new_fhmnews_post(post,contact).deliver
  end
end
