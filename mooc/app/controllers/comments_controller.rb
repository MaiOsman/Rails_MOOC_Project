class CommentsController < ApplicationController

  def create
    @lecture = Lecture.find(params[:lecture_id])
    @comment = @lecture.comments.create(params[:comment].permit(:name, :body))
    @comment.user_id = current_user.id
    @comment.save

    redirect_to lecture_path(@lecture)
  end
end
