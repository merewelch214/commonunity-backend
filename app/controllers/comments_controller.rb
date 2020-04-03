class CommentsController < ApplicationController
    def create
        comment = Comment.new(user_id: params[:user_id], content: params[:content], post_id: params[:post_id])
        if comment.save
            render json: comment, include: :user
        end
    end
    
    def show 
        comment = Comment.find(id: params[:id])
        render json: comment
    end

    def index
        # comments = Comment.where(post_id: params[:post_id])
        comments = Comment.all
        render json: comments, include: :user
    end
end
