class UsersController < ApplicationController
    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end
    end

    def login
        user = User.find_by(name: params[:name], password: params[:password])
        if user 
            render json: user
        else 
            render json: {errors: 'Incorrect username or password'}
        end
    end

    def index
        users = User.all 
        render json: users
    end

    private
    def user_params
        params.require(:user).permit(:name, :is_manager, :password, :team, :phone_number, :image_url)
    end

end
