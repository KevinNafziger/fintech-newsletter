class Contact < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: true

  def new_fhmnews_post
    PostMailer.new_fhmnews_post(self).deliver

  end
end
