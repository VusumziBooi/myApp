class MainController < ApplicationController
    def new
        @user = User.new
    end

    def create
         @user = User.new(user_params)
         if @user.save
            
         end
    end

    private
    def user_params
        params.require(:user).permit(:email , :user_time ,:password , :password_confirmation)
    end
end