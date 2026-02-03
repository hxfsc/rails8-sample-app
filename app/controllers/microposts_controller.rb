class MicropostsController < ApplicationController
  def create
    @micropost = current_user.microposts.build micropost_params
    if @micropost.save
        flash[:success]="说说发布成功"
        redirect_to root_url
    else
      @feed_items = []
      render "static_pages/home"
    end
  end



  private
    def micropost_params
      params.expect(micropost: %i[ content ])
    end
end
