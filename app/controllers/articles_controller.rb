class ArticlesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    article.save!
    redirect_to articles_url, notice: "記事「#{article.title}」を登録しました"
  end

  def edit
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
