class CheckInsController < ApplicationController
    def create
        check_in = CheckIn.new(check_in_params)  
        
        if check_in.save
            render json: check_in
        else 
            render json: {errors: check_in.errors.full_messages}
        end
    end

    def update
        check_in = CheckIn.find(params[:id])
        check_in.update(check_in_params)
        render json: check_in
    end

    private 
    
    def check_in_params
        params.require(:check_in).permit(:user_id, :location, :location_text)
    end
end
