class Accs::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @acc = Acc.from_omniauth(request.env["omniauth.auth"])

    if @acc.persisted?
      sign_in_and_redirect @acc, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"].except(:extra) # Removing extra as it can overflow some session stores
      redirect_to new_acc_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
