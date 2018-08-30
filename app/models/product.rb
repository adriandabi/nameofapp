class Product < ApplicationRecord
  def self.search(search_term)
   Product.where("name i like ?", "%#{search_term}%")
 end
  has_many :orders
  has_many :comments
  def highest_rating_comment
    comments.rating_desc.first
  end
  validates :name, presence: true
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @product, notice: 'Review was created successfully.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { redirect_to @product, alert: 'Review was not saved successfully.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
end
