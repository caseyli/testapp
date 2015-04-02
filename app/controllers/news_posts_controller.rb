class NewsPostsController < ApplicationController

  before_action :deny_access_for_non_admins, except: [:index, :show, :index_ajax]

  def index
    @news_posts = NewsPost.all

    respond_to do |format|
      format.html
      format.json { render json: @news_posts }
    end
  end

  def show
    @news_post = NewsPost.find(params[:id])
  end

  def new
    @news_post = NewsPost.new
  end

  def create
    @news_post = NewsPost.new(news_post_params)

    if @news_post.save
      # do something - go back to the index
      redirect_to "/news_posts"
    else
      render 'new'
    end
  end

  def edit
    @news_post = NewsPost.find params[:id]
  end

  def update
    @news_post = NewsPost.find params[:id]

    if @news_post.update(news_post_params)
      redirect_to "/news_posts"
    else
      render 'edit'
    end

  end

  def destroy
    @news_post = NewsPost.find params[:id]
    @news_post.destroy

    redirect_to "/news_posts"
  end

  private

    def deny_access_for_non_admins
      if !is_admin?
        redirect_to root_path
      end
    end

    def news_post_params
      params.require(:news_post).permit(:title, :body)
    end

end
