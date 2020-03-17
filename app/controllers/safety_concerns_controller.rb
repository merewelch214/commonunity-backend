class SafetyConcernsController < ApplicationController

    def create
        safety_concern = SafetyConcern.new(safety_concern_params)
        if safety_concern.save
            render json: safety_concern
        else
            render json: {errors: safety_concern.errors.full_messages}
        end
    end


    private
    def safety_concern_params
        params.require(:safety_concern).permit(:user_id, :latitude, :longitude)
    end
end
