class StaticPagesController < ApplicationController
  def index
  	@articles = Article.all.reverse[0..17]
  	#@article = Article.find(params[:id])
  	@articles_latest = @articles[0..5]
  	@articles_second_latest = @articles[6..11]
  	@articles_third_latest = @articles[12..17]
  end

  def about
  end

  def contact
  end
end
