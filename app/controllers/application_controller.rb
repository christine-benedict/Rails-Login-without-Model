class ApplicationController < ActionController::Base
    # protect_from_forgery with: :exception
    # protect_from_forgery except: :confirm
    skip_before_action :verify_authenticity_token
end
