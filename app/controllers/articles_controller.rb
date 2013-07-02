class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    @article.save!

    flash.notice= "Article '#{@article.title}' was created !!"

    redirect_to article_path(@article)
  end

  def destroy
    @article=Article.find(params[:id])
    @article.destroy

    flash.notice= "Article '#{@article.title}' was deleted !!"

    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(params[:article])

    flash.notice= "Article '#{@article.title}' was updated !!"

    redirect_to article_path(@article)
  end

end