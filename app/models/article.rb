class Article < ApplicationRecord
  has_one_attached :image
  has_rich_text :caption
end
