class CheckInsController < ApplicationController
    def unique_index
        check_ins = CheckIn.all.order(updated_at: :desc).to_a.uniq(&:user_id)
        render json: check_ins, include: :user
    end
    
    def create
        check_in = CheckIn.new(location: params[:location], user_id: params[:user_id]) 
        if check_in.save
            ActionCable.server.broadcast("team_channel", check_in: CheckInSerializer.new(check_in))
            render json: check_in, include: :user
        else 
            render json: {errors: check_in.errors.full_messages}
        end
    end

    def update
        check_in = CheckIn.find_by(user_id: params[:user_id], checked_in_at: nil)
        user = User.find(params[:user_id])
        check_in.update(checked_in_at: DateTime.now())
        ActionCable.server.broadcast("team_channel", check_in: CheckInSerializer.new(check_in))
        render json: check_in, include: :user
    end

    def latest_check_in
        check_in = CheckIn.find_by(user_id: params[:user_id], checked_in_at: nil)
        if check_in 
            render json: check_in
        else
            render json: {error: 'no current check in'}
        end
    end

    private 
    
    def check_in_params
        params.require(:check_in).permit(:user_id, :location, :location_text, :checked_in_at)
    end
end
