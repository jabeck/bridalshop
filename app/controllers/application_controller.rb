# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  def rescue_action_in_public(exception)
    # do something based on exception
    errors = [ActionController::RoutingError, ActionController::UnknownAction, ActiveRecord::RecordNotFound]
    message = exception.backtrace.join("\n") unless exception
    if errors.include?(exception)
      render :file => "#{RAILS_ROOT}/public/404.html", :layout => false, :status => 404
    else
      render :file => "#{RAILS_ROOT}/public/500.html", :layout => false, :status => 500
    end
  end  
end
