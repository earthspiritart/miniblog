class Admin::ArticlesController < AdminController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to admin_articles_path, notice: "yaya"
    else
      flash[:alert] = "oops"
      render :new
    end
  end
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update_attributes(article_params)
      redirect_to admin_articles_path, notice: "yaya"
    else
      flash[:alert] = "oops"
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to admin_articles_path, notice: "no more"
    
    end
  
  private
  
  def article_params
    params.require(:article).permit(:heading, :story, :author)
  end
end
