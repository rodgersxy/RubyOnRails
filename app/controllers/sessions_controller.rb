class SessionsController < ApplicationController
    def new
    end
  
    def create
      user = authenticate_user
      if user
        session[:user_id] = user.id
        redirect_to root_path, notice: "Logged in!"
      else
        flash.now[:alert] = "Invalid credentials!"
        render :new
      end
    end
  
    def destroy
      session[:user_id] = nil
      redirect_to root_path, notice: "Logged out!"
    end
  
    private
  
    def authenticate_user
      user = User.find_by(email: params[:email])
      return user if user&.authenticate(params[:password])
      false # Return false if the authentication fails
    end
  end