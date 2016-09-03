class WelcomesController < ApplicationController

  def new
  	@user = User.new
  end

  def create
  	u=User.new(user_params)
    if u.save
      flash[:success] = "Client added successfully"
      redirect_to welcomes_path
    else
      flash[:success] = "Client not added."
    end
  end


  private

  def user_params
  	params.require(:user).permit!
  end

end
