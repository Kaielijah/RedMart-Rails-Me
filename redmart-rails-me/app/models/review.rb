class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :feedback, presence: true, length: { maximum: 140 }
end
