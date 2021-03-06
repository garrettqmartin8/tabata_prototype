class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to workouts_url
      else
        # TODO add flash error
        render 'new'
      end
    else
      # TODO add flash error
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to "/login"
  end
end
