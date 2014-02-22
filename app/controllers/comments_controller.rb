class CommentsController < ApplicationController

  before_action :find_article

  def create
    @comment = @article.comments.build(comment_params)
    if @comment.save
      redirect_to(@article, notice: "yay")
    else
      flash[:alert] = "boo"
      render "articles/show"

      end
    
  end

  private

  def find_article
    @article = Article.find(params[:article_id])

  end

  def comment_params
    params.require(:comment).permit(:comment)
    
  end

end
