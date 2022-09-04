class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  attr_accessor :current_group

  add_flash_types :info, :error, :warning
end
