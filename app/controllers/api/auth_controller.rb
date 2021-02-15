class Api::AuthController < ApplicationController
    # skip_before_action :authorize, only:[:create, :auto_login]
    def create
        
        @user = User.find_by(username: user_login_params[:username])
        
        if @user && @user.authenticate(user_login_params[:password])
            token = encode_token({ user_id: @user.id})
            puts token
            render json: {user: @user, matches: @user.candidate_users, jwt: token}, status: :accepted
        else
            render json: {message: 'Invalid username or password'}, status: :unauthorized
        end
        
    end

    def auto_login
        render json: {user: @user, matches: @user.candidate_users}
    end

    private
    def user_login_params
      params.require(:user).permit(:username, :password)
    end
    def encode_token(payload)
        JWT.encode(payload, Rails.application.secrets.secret_key_base, "HS256")
    end
end
