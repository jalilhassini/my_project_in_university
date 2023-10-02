class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
    def create
        user = User.find_by(Email: params[:session][:Email].downcase)
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          flash[:notice] = "Logged in successfully."
          redirect_to user
   
        else
          flash.now[:alert] = "There was something wrong with your login details."
         
          render 'new'
        end
      end
       
      def destroy
        session[:user_id] = nil
        flash[:notice] = "You have been logged out."
        redirect_to root_path
      end
end