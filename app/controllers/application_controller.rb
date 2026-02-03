class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  include Pagy::Method
  include SessionsHelper



  private

    def logged_in_user
      unless logged_in?
        flash[:danger]="请先登录"
        redirect_to login_url
      end
    end
end
