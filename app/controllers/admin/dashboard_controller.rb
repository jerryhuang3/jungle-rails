class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with  name: Rails.configuration.admin[:admin_user_key], 
                                password: Rails.configuration.admin[:admin_pass_key]

  def show
  end

end
