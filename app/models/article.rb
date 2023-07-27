class Article < ApplicationRecord
  has_many :comments
  validates :title, length: { minimum: 4 }
end
