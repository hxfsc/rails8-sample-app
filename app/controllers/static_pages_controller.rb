class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @user = current_user
      @micropost = current_user.microposts.build
      @pagy, @feed_items = pagy(current_user.feed, offset: 50)
    end
  end

  def help
  end


  def about
  end
end
