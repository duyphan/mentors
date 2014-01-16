class ExamplePostsController < ApplicationController
  before_action :set_example_post, only: [:show, :edit, :update, :destroy]

  # GET /example_posts
  # GET /example_posts.json
  def index
    @example_posts = ExamplePost.all
  end

  # GET /example_posts/1
  # GET /example_posts/1.json
  def show
  end

  # GET /example_posts/new
  def new
    @example_post = ExamplePost.new
  end

  # GET /example_posts/1/edit
  def edit
  end

  # POST /example_posts
  # POST /example_posts.json
  def create
    @example_post = ExamplePost.new(example_post_params)

    respond_to do |format|
      if @example_post.save
        format.html { redirect_to @example_post, notice: 'Example post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @example_post }
      else
        format.html { render action: 'new' }
        format.json { render json: @example_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /example_posts/1
  # PATCH/PUT /example_posts/1.json
  def update
    respond_to do |format|
      if @example_post.update(example_post_params)
        format.html { redirect_to @example_post, notice: 'Example post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @example_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /example_posts/1
  # DELETE /example_posts/1.json
  def destroy
    @example_post.destroy
    respond_to do |format|
      format.html { redirect_to example_posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_example_post
      @example_post = ExamplePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def example_post_params
      params.require(:example_post).permit(:title, :content)
    end
end
