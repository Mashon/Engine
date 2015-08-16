require_dependency "mj/application_controller"

module Mj
  class CommentsController < ApplicationController
    def create
  @announcement = Announcement.find(params[:announcement_id])
  @comment = @announcement.comments.create(comment_params)
  flash[:notice] = "Comment has been created!"
  redirect_to announcements_path
end

private
  def comment_params
    params.require(:comment).permit(:text)
  end
  end
end
