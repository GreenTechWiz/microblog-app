class Chirp < ApplicationRecord
  def formatted_time
    created_at.strftime("%b %e, %l:%M %p")
  end
end
