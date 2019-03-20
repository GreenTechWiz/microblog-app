class Chirp < ApplicationRecord
  has_many :comments

  def formatted_time
    created_at.strftime("%b %e, %l:%M %p")
  end
end
