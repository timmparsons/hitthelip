class Product < ApplicationRecord
	has_many :comments
	has_many :orders
	validates :name, presence: true
	validates :body, presence: true
		validates :user, presence: true
		validates :product, presence: true
		validates :rating, numericality: { only_integer: true}


def highest_rating_comment
	comments.rating_desc.first
end

def average_rating
	comments.average(:rating).to_f
end


end