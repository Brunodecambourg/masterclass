class PostsController < ApplicationController

  def index 
    search_full_path = 'source/masterclass'
    @posts = Kaminari.paginate_array(InsitiConnector.build.get_posts(search_full_path)).
      page(params[:page]).per(8)
  end

  def show
    @post = InsitiConnector.build.get_post(params[:slug])
  end

end