class Api::V1::Auth::RegistrationsController <  DeviseTokenAuth::RegistrationsController

  def index
    registrations = Registration.all
    render :json => registrations
  end
   
    private
    def sign_up_params
      params.permit(:name, :nickname, :image, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.permit(:name, :nickname, :image, :email, )
    end
end
