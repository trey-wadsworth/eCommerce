class AdminController < ApplicationController
 before_action :authenticate_user!

  def all_users
  	
  	if current_user.role != 'admin'
  		
  		redirect_to root_path, :notice => 'Admin credentials needed for Admin links.'
  		
  	end	
		@users = User.all
  end

  
  def edit_user
  	@user = User.find(params[:id])
  	@user.update(role: params[:role])
  	redirect_back(fallback_location: root_path)


  end

  def show_user
  	@user = User.find(params[:id])
  end


  def delete_user
    @user = User.find(params[:id].to_i)
    @user.destroy
    redirect_to all_users_pathr
  end
end
