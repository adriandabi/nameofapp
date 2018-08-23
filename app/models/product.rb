class Product < ApplicationRecord
  def self.search(search_term)
   Product.where("name i like ?", "%#{search_term}%")
 end
  has_many :orders
  has_many :comment
  def highest_rating_comment
    comments.rating_desc.first
  end
end
