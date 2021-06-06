class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]

  def create
    @user = Usuario.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      sign_in(@user)
      redirect_to form_filtrar_por_nome_url
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
