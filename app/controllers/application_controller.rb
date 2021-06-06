class ApplicationController < ActionController::Base
  before_action :set_cache_headers
  include ApplicationHelper
  include Pagy::Backend
  private

  def set_cache_headers
    response.headers["Cache-Control"] = "no-cache, no-store"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Mon, 01 Jan 1990 00:00:00 GMT"
  end

  def authorize
    unless logged_in?
      redirect_to root_url
    end
  end
end
