class ApplicationController < ActionController::Base
  protected

    def after_sign_in_path_for(resource)
      new_users_path
    end
end
