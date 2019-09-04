class Post < ApplicationRecord
  has_rich_text :description
  after_save :new_fhmnews_post

  @contacts = Contact.all

  private
    @contacts.each do |contact|
      PostMailer.new_fhmnews_post(self).deliver
    end

  # private
  #   def new_fhmnews_post
  #     PostMailer.new_fhmnews_post(self).deliver_later
  #   end
end
