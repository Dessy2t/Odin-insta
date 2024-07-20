class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 4, maximum: 50}
  validates :description, presence: true, length: {minimum: 5, maximum: 150}
  validates :keywords, presence: true, length: {minimum: 4, maximum: 50}

  has_many_attached :images
end
