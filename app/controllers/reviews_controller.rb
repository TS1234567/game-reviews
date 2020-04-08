class ReviewsController < ApplicationController
  before_action :correct_user, only: [:edit, :update, :destroy]

  def new
    @review = Review.new
  end
  
  def create
    @review = current_user.reviews.build(review_params)
    #binding.pry
    if (@review.save)
      flash[:success]  = "レビューの投稿に成功しました"
      redirect_to root_url
    else
      @reviews = current_user.feed_reviews.order('created_at DESC').page(params[:page])
      flash[:error] = "レビューの投稿ができませんでした"
      render :new
    end
  end
  
  def edit
    @review = Review.find(params[:id])
  end  
  
  def update
    @review = Review.find(params[:id])
    
      if @review.update(review_params)
        redirect_to root_url
      else
        render "edit"
      end
  end  
  
  def destroy
    @review.destroy
    redirect_back(fallback_location: root_path)
  end
  
  private
  
  def review_params
    params.require(:review).permit(:title_id, :platform_id, :content, :point)
  end
  
  def correct_user
    @review = current_user.reviews.find_by(id: params[:id])
    unless @review
      redirect_to root_url
    end
  end 
  
    
end
