class PerfilsController < ApplicationController

  def index
    @perfiles = Perfil.all
  end

  def show
    @user = current_user
    @perfil = Perfil.find(params[:id])
  end

  def edit
    @perfil = Perfil.find(params[:id])
  end

  def update
    @perfil = Perfil.find(params[:id])
    @perfil.update(perfil_params)
    redirect_to root_path
  end


  private

  def perfil_params
    params.require(:perfil).permit(:nombre, :apellido, :phone)
  end
end
