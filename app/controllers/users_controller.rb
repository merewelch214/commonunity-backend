class UsersController < ApplicationController
    def create
        user = find_or_create_by(user_params)

        if user.valid?
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end
    end

    private
    def user_params
        params.permit(:name, :is_manager, :name, :team, :phone_number, :image_url)
    end

end
