class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  after_filter :set_online

  def all_who_are_in_touch
    $redis_onlines.keys
  end

  private
  def set_online
    $redis_onlines.set( current_user.id, nil, ex: 5*60 ) if !!current_user
  end

end
