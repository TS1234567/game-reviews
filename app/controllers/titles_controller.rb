class TitlesController < ApplicationController
  def new
   @title = Title.new
  end
  
  def create
    
    @title = Title.new(title_params)
    if (@title.save)
      flash[:success] = "タイトルを追加しました"
      redirect_to new_review_url
      
    else
      flash[:error] = "タイトルを追加できませんでした"
      render :new
    end
  
  end
  
  private
  
  def title_params
    params.require(:title).permit(:name, :image)
  end
  
end
