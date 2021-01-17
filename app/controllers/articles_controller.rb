class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = current_user.articles.order(created_at: :desc)
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.new(article_params)

    if @article.save
      redirect_to @article, notice: "記事「#{@article.title}」を追加しました"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @article.update!(article_params)
    redirect_to articles_url, notice: "記事「#{article.title}」を更新しました。"
  end

  def destroy
    @article.destroy
    redirect_to articles_url, notice: "記事「#{article.title}」を削除しました。"
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = current_user.articles.find(params[:id])
  end
end
