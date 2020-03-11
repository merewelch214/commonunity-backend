class PostsController < ApplicationController
    def create
        post = Post.new(post_params)
        render json: post
    end

    private
    def post_params
        params.require(:post).permit(:user_id, :category, :title, :summary, :expires_at)
    end
end
