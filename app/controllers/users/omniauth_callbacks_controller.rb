class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def myvr
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    render json: request.env["omniauth.auth"]
  end

  def failure
    redirect_to root_path
  end
end
