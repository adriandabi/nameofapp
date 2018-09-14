class Comment < ApplicationRecord::Base
  belongs_to :product
  belongs_to :user
  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to product_path(@product)
  end
  
end
