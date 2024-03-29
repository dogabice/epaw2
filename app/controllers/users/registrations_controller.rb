# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  include Accessible
  skip_before_action :check_user, except: [:new, :create]
  before_action :authenticate_user!, only: [:edit, :update]

  def edit
  end

  def update
    @user = User.find(current_user.id)
    respond_to do |format|
      if @user.update_with_password(user_params)
        sign_in @user, :bypass => true
        format.html { redirect_to root_path }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
end

private
def password_params
    params.require(:user).permit(:password, :password_confirmation, :current_password)
end


  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone, :birth_date, :address)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :first_name, :last_name, :phone, :birth_date, :address, :current_password)
  end

  private

def user_params
  params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone, :birth_date, :address, :current_password)
end


  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
