class UsersController < ApplicationController
  def create
    user = User.new user_params
    if user.save
    render json: {
      jwt: encode_token({
        id: user.id,
        first_name: user.first_name,
        last_name: user.last_name,
        full_name: user.full_name
        })
      }
    else
      p user.errors.full_messages
      head :bad_request
    end
  end

private

def user_params
  params.require(:user).permit(
    :first_name, :last_name, :email, :password, :password_confirmation
  )
end

end
