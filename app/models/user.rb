class User < ApplicationRecord
  extend FriendlyId
  friendly_id :tittle, use: slugged
  def should_generate_new_friendly_id?
    tittle_changed?
  end
end
