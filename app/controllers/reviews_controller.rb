class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
  
    @review.user_id = current_user.id
    @review.product_id = params["product_id"]

    if @review.save
      redirect_to product_path(params['product_id']), notice: 'Review created!'
    end
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to [Product.find(params[:product_id])], notice: 'Product deleted!'
  end

    private

  def review_params
    params.require(:review).permit(
      :description,
      :rating
    )
  end

  

end
