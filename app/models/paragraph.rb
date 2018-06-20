class Paragraph < ApplicationRecord
  has_many :chapters
  has_many :books, :through => :chapters
end
