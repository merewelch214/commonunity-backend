class PostsController < ApplicationController
    def create
        post = Post.new(post_params)
        if post.save
            render json: post
        else 
            render json: {errors: post.errors.full_messages}
        end

    end

    def index
        posts = Post.all 
        render json: posts
    end

    private
    def post_params
        params.require(:post).permit(:user_id, :category, :title, :summary, :expires_at)
    end
end
