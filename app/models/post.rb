class Post < ApplicationRecord
  has_rich_text :description
  attr_accessor :description
end
