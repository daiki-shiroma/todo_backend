class Api::V1::Auth::RegistrationsController <  DeviseTokenAuth::RegistrationsController
  # skip_before_action :verify_authenticity_token

  # def index
  #   registrations = Registration.all
  #   render :json => registrations
  # end

  # def create
  #   build_resource(sign_up_params)
  #   resource.skip_confirmation!
  # end

  

    private
    def sign_up_params
      params.require(:registration).permit(:name, :nickname, :image, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.permit(:name, :nickname, :image, :email, )
    end
end
