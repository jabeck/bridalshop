# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  def render_optional_error_file(status_code)
    # do something based on exception


    if status_code == :not_found
      render :file => "#{RAILS_ROOT}/public/404.html", :layout => false, :status => 404
    else
      render :file => "#{RAILS_ROOT}/public/500.html", :layout => false, :status => 500
    end
  end  
end
