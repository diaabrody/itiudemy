class CommentsController < ApplicationController
  before_action :authenticate_user!
def create
@lecture= Lecture.find(params[:lecture_id])
@comment= @lecture.comments.create( params.require(:comment).permit(:body))
@comment.user_id=current_user.id
@comment.save

redirect_to lecture_path(@lecture)

end

end