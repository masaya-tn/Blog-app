class ArticlesController < ApplicationController
  def index
    @articles = current_user.articles
  end

  def show
    @article = current_user.articles.find(params[:id])
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
    @article = current_user.articles.find(params[:id])
  end

  def update
    article = current_user.articles.find(params[:id])
    article.update!(article_params)
    redirect_to articles_url, notice: "記事「#{article.title}」を更新しました。"
  end

  def destroy
    article = current_user.articles.find(params[:id])
    article.destroy
    redirect_to articles_url, notice: "記事「#{article.title}」を削除しました。"
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
