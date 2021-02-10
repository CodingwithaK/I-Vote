class ApplicationController < ActionController::API
    # requires autherization before any request to routes
    # before_action :authorized

    # takes in a payload in this case it is information related to the user (username and password)
    # returns the token
    def encode_token(payload)
        JWT.encode(payload, 'secret')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            # grabs tokem and assignns it to a variable 
            token = auth_header.split(' ')[1]
            # using the begin/rescue syntax allows us to rescue
            #  out of and exception if the server is passed an invalid token instead of crashing it returns nil
            begin
            JWT.decode(token,'secret',true, algorithm: 'HS256')
            
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user= User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!current_user
    end
    
    def authorized
        render json: {message: 'Please log in'}, status: :unathorized unless logged_in?
    end

end
