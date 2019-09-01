class Post < ApplicationRecord
  has_rich_text :description
  after_create :post_mailer

  def new_fhmnews_post
    PostMailer.new_fhmnews_post(self).deliver
  end
  
end
