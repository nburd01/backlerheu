class PostsController < ApplicationController
  before_action :set_post, only: %i[ show update destroy ]

  # GET /posts
  def index
    @posts = Post.all

    render json: @posts
  end

  # GET /posts/1
  def show
    render json: @post
  end

  # POST /posts
  def create
    @post = Post.new(post_params.except(:tags))
    create_or_delete_posts_tags(@post, params[:post],[:tags],)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params.except(:tags))
    create_or_delete_posts_tags(@post, params[:post],[:tags],)

      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    def create_or_delete_posts_tags(post,tags)
      post.taggables.destroy_all
      tags = tags.strip.split(',')
      tags.each do|tag|
        post.tags << Tag.find_or_create_by(name: tag)
      end
    end


    # Only allow a list of trusted parameters through.
    def post_params
      params.fetch(:post, {})
    end
end
