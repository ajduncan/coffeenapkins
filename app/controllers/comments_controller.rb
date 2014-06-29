class CommentsController < ApplicationController
  def create
    @napkin = Napkin.find(params[:napkin_id])
    @comment = @napkin.comments.create(comment_params)
    redirect_to napkin_path(@napkin)
  end

  def destroy
    @napkin = Napkin.find(params[:napkin_id])
    @comment = @napkin.comments.find(params[:id])
    @comment.destroy
    redirect_to napkin_path(@napkin)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
