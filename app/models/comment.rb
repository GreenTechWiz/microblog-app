class Comment < ApplicationRecord
  belongs_to :chirp
  validates :content, length: {minimum: 1, maximum: 141}
end
