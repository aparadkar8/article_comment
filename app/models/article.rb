class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, length: { minimum: 4 }
end
