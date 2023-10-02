
class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :index , :about , :principal, :contact]
    
 def new
     @user = User.new
 end

 def create
    @user = User.new(user_params)
    if @user.save
    # UserMailer.registration_confirmation(@user).deliver
      flash[:notice] = "Successfully User created."
      render 'show' 
     
    else
      render 'new'
    end
  end
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
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_path
  end
  def about
    
  end
  def principal
    
  end
  def contact
    
  end
  def dashboard
    @users = User.all
  end
    
  
  
  
  
  
 private
  
 def user_params
  params.require(:user).permit(:Nom, :Prénom, :Date_de_naissance, :sexe, :Adresse, :Ville, :Téléphone, :spécialité, :password, :code_postal, :Email, :Nationalité, :commune, files: [])
end
 


end