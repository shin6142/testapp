class PostsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :update, :destroy]
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    before_action :force_redirect_unless_my_post, only: [:edit, :update, :destroy]
    protect_from_forgery :except => [:destroy]
def index
    @posts = Post.all.order(created_at: :desc)
    
end

def show 
    @comments = @post.comments
    @comment = Comment.new
end 

def new
    return redirect_to new_profile_path, alert: "Please create your profile" if current_user.profile.blank?
    @post = Post.new
end 

def edit
end 

def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
        redirect_to root_path, notice: "Thank you for posting! ;)"
    else
        render :new
    end 
end 

def update
    if @post.update(post_params)
        redirect_to root_path, notice: "Your post is updated!:)"
    else
        render :edit
    end
end 

def destroy
    if @post.destroy
        redirect_to root_path, notice: "Your post is deleted. ;<"
    else
        redirect_to root_path, notice: "Oops, we could not delete your post.:("
    end 
end 

private

def post_params
    params.require(:post).permit( :content, images: [] )
 end 

 def find_post
    @post = Post.find(params[:id])
 end


 def force_redirect_unless_my_post
   return redirect_to root_path, alert: "Unable to access." if @post.user != current_user
 end 



end
