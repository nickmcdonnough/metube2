class CommentsController < ApplicationController
  before_filter :load_media

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    comment = Comment.new
    comment.content = params[:comment][:content]
    comment.media = @media
    comment.save
    redirect_to :back
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to :back
  end

  private

  def load_media
    resource, id = request.path.split('/')[1,2]
    @media = resource.singularize.classify.constantize.find(id)
  end
end
