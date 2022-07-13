class MembersController < ApplicationController
    before_action :authenticate_user!
    # skip_before_action :authorized, only: [:create]
   
    def create
      user = User.create(user_params)
     
      if user.valid?
        render json: { user: user, status: :created}
      else
        render json: { error: 'failed to create user', status: :not_acceptable}
      end
    end

    def show
      user = get_user_from_token
      render json: {
        message: "If you see this, you're in!",
        user: user
      }
    end
  
    private
  
    def get_user_from_token
      jwt_payload = JWT.decode(request.headers['Authorization'].split(' ')[1],
      ENV['JWT_SECRET']).first
      user_id = jwt_payload['sub']
      User.find(user_id.to_s)
    end

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
  end