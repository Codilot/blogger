class ArticlesController < ApplicationController

  def index
    if params[:q]
      search_term = params[:q]
      @articles = Article.search(search_term)
    else
      @articles = Article.all
    end
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.all
    @random_article = Article.all.shuffle[0]
    @articles_latest = @articles.reverse[0..6]
  end
 
  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
   
    redirect_to articles_path
  end

  #private actions
  private
    def article_params
      params.require(:article).permit(:title, :text, :teaser, :image_url)
    end
  
end
