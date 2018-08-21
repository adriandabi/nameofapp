class Product < ApplicationRecord
  def self.search(search_term)
   Product.where("name i like ?", "%#{search_term}%")
 end
  has_many :orders, :comment
end
