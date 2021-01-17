class Article < ApplicationRecord
  validates :title, presence: true

  belogns_to :user

  scope :recent, -> { order(created_at: :desc) }

  private

  def validate_title_not_including_comma
    errors.add(:title, 'にカンマを含めることはできません') if title&.include?(',')
  end
end
