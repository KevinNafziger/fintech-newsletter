class Post < ApplicationRecord
  has_rich_text :description
  after_save :new_fhmnews_post

  private
    def new_fhmnews_post
      PostMailer.new_fhmnews_post(self).deliver_now
    end
end
