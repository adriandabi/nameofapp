class Comment < ApplicationRecord::Base
  belongs_to :product, :user
end
