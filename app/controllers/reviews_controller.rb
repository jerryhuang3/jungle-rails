class ReviewsController < ApplicationController

    def create
        @review = Review.new(review_params)
        @review.user_id = session[:user_id]
        @review.product_id = params[:product_id]
    
        if Review.where(user_id: 5).empty?
            @review.save
            redirect_to "/products/#{@review.product_id}"
        else
            raise "You have already submitted a review!"
        end
    end

    private

    def review_params
        params.require(:review).permit(
            :product_id,
            :user_id,
            :description,
            :rating,
            :created_at
          )
    end

end
