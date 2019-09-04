class ApplicationController < ActionController::Base
  def index
    @contacts = Contact.all
  end
end
