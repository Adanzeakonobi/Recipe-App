class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  attr_accessor :current_group
end
