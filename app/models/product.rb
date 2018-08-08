class Product < ApplicationRecord
  Product.where("name LIKE ?", "%#{search_term}%")
end
  has_many :orders
end
