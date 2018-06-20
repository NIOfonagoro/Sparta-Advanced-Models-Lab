class Chapter < ApplicationRecord
  belongs_to :books
  belongs_to :paragraphs
end
