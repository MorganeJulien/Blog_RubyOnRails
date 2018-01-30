class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

  def new
    @article =  Article.new
  end

  def create
    @article = Article.new(articles_params)
    if @article.save
      redirect_to article_path(@article)
    else
      render "new"
    end
  end

  def show
    load_article
  end

  def load_article
    @article = Article.find(params[:id])
  end

  def articles_params
    params.require(:article).permit(:title,:texte)
  end

end
