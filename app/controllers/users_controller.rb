class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end
	
	def index
		@users = User.all
	end
	
	def edit
		@user = User.find(params[:id])
	end
	
	def update
		@user  = User.find(params[:id])
		if (@user.update_attributes(user_params))
			redirect_to @user
		else
			render 'edit'
		end
	end
	
	def destroy
		@user = User.find(params[:id])
		#@user.posts.destroy_all
		@user.destroy
		redirect_to users_path
	end
	
	private
    def user_params
      params.require(:user).permit(:fname, :lname, :username)
    end
end