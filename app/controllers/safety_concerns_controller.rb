class SafetyConcernsController < ApplicationController

    def create
        safety_concern = SafetyConcern.new(safety_concern_params)
        if safety_concern.save
            render json: safety_concern
        else
            render json: {errors: safety_concern.errors.full_messages}
        end
    end

    def index
        safety_concerns = SafetyConcern.all.order(created_at: :desc)
        render json: safety_concerns, include: :user
    end

    def update
        safety_concern = SafetyConcern.find(params[:id])
        safety_concern.update(resolved_at: safety_concern_params[:resolved_at], resolution_text: safety_concern_params[:resolution_text])
        if safety_concern
            render json: safety_concern, include: :user
        else
            render json: {errors: 'Safety concern not found'}
        end
    end

    def show
        safety_concern = SafetyConcern.find_by(user_id: params[:user_id], resolved_at: nil)
        if safety_concern
            render json: safety_concern, include: :user
        else
            render json: {errors: 'Safety concern not found'}
        end
    end


    private
    def safety_concern_params
        params.require(:safety_concern).permit(:user_id, :latitude, :longitude, :resolved_at, :resolution_text)
    end
end
