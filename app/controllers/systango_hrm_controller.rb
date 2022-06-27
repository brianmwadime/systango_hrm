class SystangoHrmController < ApplicationController
  before_action :require_login, :authorize_global
  skip_before_action :authorize_global, :only => [:calendar]
end
