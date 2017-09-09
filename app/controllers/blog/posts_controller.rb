module Blog

class PostsController < BlogController


  def index
    @posts = Post.published.most_recent.paginate(:page => params[:page],per_page:  4)
  end

  def show
  @post = Post.published.friendly.find(params[:id])
  end

end
end