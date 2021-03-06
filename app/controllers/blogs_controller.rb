class BlogsController < ApplicationController
  before_action :authenticate_user!
	def new
		 @blog = Blog.new
	end

  def index
      @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def create
   	@blog = Blog.new(blog_params)
   
    if @blog.save
      redirect_to @blog
    else
      render 'new'
    end  
  end

  def update
    @blog = Blog.find(params[:id])
   
    if @blog.update(blog_params)
      redirect_to @blog
    else
      render 'edit'
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def contactus

  end

  def privacy
  end

  def aboutus

  end
	
  private
   def blog_params
      params.require(:blog).permit(:title, :text)
  end
end	