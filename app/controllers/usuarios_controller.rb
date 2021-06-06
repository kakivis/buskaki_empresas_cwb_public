class UsuariosController < ApplicationController
  before_action :authorize, except: [:new, :create]

  def new
    @user = Usuario.new
  end

  def create
    @user = Usuario.new(user_params)
    if @user.save
      redirect_to sign_in_path, notice: "Usuário foi criado com sucesso!"
    else
      render action: :new
    end
  end

  def show
    @user = current_user
  end

  private

  def user_params
    params.require(:usuario).permit(:nome, :email, :password, :password_confirmation)
  end
end
