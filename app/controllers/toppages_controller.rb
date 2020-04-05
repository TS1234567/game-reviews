class ToppagesController < ApplicationController
  def index
    
    if (logged_in?)
      @review = current_user.reviews.build
      @reviews = current_user.feed_reviews.order('created_at DESC').page(params[:page])

      @followerreviews = current_user.feed_reviews

    end
    
    @rankingtitles = Review.group(:title_id).average(:point).sort{|a,b| b[1]<=>a[1]}.map{|element|
                        [Title.find(element[0]), element[1]]
                    }[0..9]
                    
    
  end
end
