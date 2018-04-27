class UsersController < ApplicationController


  def confirm
      @user = User.new(params[:fullname], params[:address], params[:city], params[:state], params[:zip], params[:country], params[:email], params[:phone], params[:userid], params[:password])
      cookies[:user] = @user
      cookies[:userid] = params[:userid]
      cookies[:password] = params[:password]
      p cookies[:user]

      # @user = YAML.load(session[:user])
      # render 'confirm'
  end

  def login
      # check for login params and user in session
      p cookies[:user]
      p params
      if cookies[:userid]
          if cookies[:userid].to_s == params[:userid].to_s && cookies[:password].to_s == params[:password].to_s
               redirect_to "/users/loggedin"
          else
              @error = "Invalid log in"
              render 'homepage'
          end
      end
  end

  def loggedin
      @username = cookies[:userid]
  end

  # private
  # def user_params
  #     params.require(:user).permit(:fullname, :address, :city, :state, :zip, :country, :email, :phone, :userid, :password)
  # end

end
