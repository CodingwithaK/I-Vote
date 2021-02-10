class Api::UsersController < ApplicationController
#   skips authorization before user signs up
    # skip_before_action :authorized, only:[:create, :auto_login, :index]

    def index 
        users = User.all
        render json: users, include: [:candidate_users]
       
    end

    def profile
        render json:{user: current_user}, status: :accepted
    end

  
    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: @user, jwt:@token }, status: :created
        else
            render json: {error: "failed to create user"}, status: :not_acceptable
        end 
    end

    def login
        @user = User.find_by(username: user_login_params[:username])
        if @user && @user.authenticate(user_login_params[:password])
            token = encode_token({ user_id: @user.id})
            render json: {user: @user, jwt: token}, status: :accepted
        else
            render json: {message: 'Invalid username or password'}, status: :unauthorized
        end
    end

    def auto_login
        render json: @user
    end

    private
    def user_params
      params.require(:user).permit(:username, :password)
    end

end
