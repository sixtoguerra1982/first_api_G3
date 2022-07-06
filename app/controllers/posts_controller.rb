class PostsController < ApplicationController
  def index
    if params[:id].present?
      # @posts = Post.find(params[:id].to_i)
      @posts = Post.where(id: params[:id])
      if @posts.count > 0
        render json: @posts
      else
        render json: {error: 'Registro no encontrado'}
      end
    else
      @posts = Post.all
      render json: @posts
    end
  end
end
