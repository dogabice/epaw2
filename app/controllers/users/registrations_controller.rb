class Users::RegistrationsController < Devise::RegistrationsController
    before_action :authenticate_user!, only: [:edit, :update]

    def edit
    end

    def update
        if current_user.update(user_params)
            flash[:notice] = "Profil başarıyla güncellendi."
            redirect_to root_path
          else
            flash[:alert] = "Profil güncellenirken bir hata oluştu. Lütfen tekrar deneyin."
            render :edit
          end
        end


    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone, :birth_date, :address)
    end
  
    def account_update_params
      params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :first_name, :last_name, :phone, :birth_date, :address)
    end

    private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone, :birth_date, :address)
  end

  end
  