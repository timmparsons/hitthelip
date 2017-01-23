class Comment < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :name, presence: true
  validates :body, presence: true
   validates :user, presence: true
   validates :product, presence: true
   validates :rating, numericality: { only_integer: true }

  scope :rating_desc, -> {order(rating: :desc) }
end
