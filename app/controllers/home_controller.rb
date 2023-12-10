class HomeController < ApplicationController
  def index
    @latest_events = Event.order("created_at DESC").limit(5) unless current_user.nil?
  end
end
