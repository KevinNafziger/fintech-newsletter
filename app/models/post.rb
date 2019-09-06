class Post < ApplicationRecord
  has_rich_text :description

  has_many :publications
  has_many :contacts, through: :publications
  #after_save :new_fhmnews_post
  #
  # private
  #   def new_fhmnews_post
  #     PostMailer.new_fhmnews_post(self).deliver
  #   end
end
