class UsersController < ApplicationController
  

  
  def index
  end
  
  def new 
    @user = User.new
  end
  
  def create 
    @user = User.new user_params
    if @user.save
      login(@user)
      redirect_to root_path, notice: "Account Created"
    else 
      render :new
    end
  end
  
  def show 
    @user = current_user
  end
  
  def edit
    @user = current_user
  end
  
  # PATCH/PUT - /computers/:id
  def update
    # @computer = Computer.find params[:id]
    if @computer.update computer_params
      redirect_to @computer, notice: "Computer Updated."
    else
      render :edit
    end
  end
  
  # DELETE - /computers/:id
  def destroy
    # @computer = Computer.find params[:id]
    @computer.destroy
    redirect_to @computer, alert: "Computer Deleted."
  end
  
  private 
  
  def user_params
    params.require(:user).permit(:username,:email,:password,:password_confirmation,:firstname,:lastname)
  end
  

  
end
