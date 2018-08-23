class Comment < ApplicationRecord::Base
  belongs_to :product
  belongs_to :user
  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }
end
