class LikesController < ApplicationController
    def index
        likes = Like.where(post_id: params[:post_id])
        render json: likes
    end

    def create
        like = Like.create(user_id: params[:user_id], post_id: params[:post_id]) 
        render json: like
    end

    def destroy
        like = Like.find(params[:id])
        like.destroy
    end
end
