class StaticPagesController < ApplicationController
  def index
  	@articles = Article.all
  	@articles_latest = @articles.reverse[0..5]
  	@articles_second_latest = @articles.reverse[6..11]
  	@newsletter = Newsletter.new
  end

  def about
  end

  def contact
  end
end
