class ProfilesController < ApplicationController
    before_action :authenticate_user!
    before_action :find_profile, only: [:show, :edit, :update]

   
    def show
        @posts = Post.where(id: @profile.user_id)
        @Comments = Comment.where(id: @profile.user_id)

    end

    def new
        return redirect_to edit_profile_path(current_user.profile) if current_user.profile.present?
        @profile = Profile.new
    end

    def edit
    end

    def create
        @profile = Profile.new(profile_params)
        @profile.user = current_user
        if @profile.save
            redirect_to root_path, notice: "Created your profile successfully!"
        else
            render :new
        end 
    end

    def update
        if @profile.update(profile_params)
            redirect_to root_path, notice: "Updated your profile successfully!"
        else
            render :edit
        end 
    end

    def destroy
    end

    private

    def profile_params
        params.require(:profile).permit(
            :name, :nationallity, :text, :image
        )
    end 

    def find_profile
        @profile = Profile.find(params[:id])
    end 

end
