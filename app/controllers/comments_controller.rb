class CommentsController < ApplicationController
  before_action :find_comment, only: [:show, :edit, :update, :destroy]
    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        if @comment.save
          redirect_back(fallback_location: root_path)
        else
          redirect_back(fallback_location: root_path)
        end  
    end

    def show
    end

    def edit
    end 

    def destroy
      if @comment.destroy
        redirect_to root_path, notice: "Your comment is deleted. ;<"
      else
        redirect_to root_path, notice: "Oops, we could not delete your post.:("
      end 
    end 
    
      private
      def comment_params
        params.require(:comment).permit(:content, :post_id)
      end

      def find_comment
        @comment = Comment.find(params[:id])
     end


end
