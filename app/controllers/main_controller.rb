class MainController < ApplicationController
    def new
        @user = User.new
    end

    def create
         @user = User.new(user_params)
         if @user.save
         else
            render plain: "Incorrect password or email"
         end
    end

    def update
        email = params[:user][:email]
        user_type = params[:user][:user_type]
        user = User.find_by(email: email)
        user.user_type = user_type
        user.save
        render plain: "Updated Successfully"
    end

    def delete
        email = params[:user][:email]
        User.destroy_by(email: email)
        render  plain: "deleted successfully"
    end

    private
    def user_params
        params.require(:user).permit(:email , :user_type ,:password , :password_confirmation)
    end

end