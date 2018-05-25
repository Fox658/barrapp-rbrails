class Post < ApplicationRecord

  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :author

  scope :most_recent, -> {order(id: :desc)}
  def should_generate_new_friendly_id?
    title_changed?
  end
  def display_day_published
    "Publicado el #{created_at.strftime('%-d/%m/%Y')}"
  end

end
