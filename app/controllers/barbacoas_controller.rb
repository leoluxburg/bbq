class BarbacoasController < ApplicationController
  def index

  end

  def show
    @barbacoa = Barbacoa.find(params[:id])
    @perfil = Perfil.find(@barbacoa.perfil)
  end

  def new
    # @perfil = Perfil.find(params[:rider_id])
    @barbacoa = Barbacoa.new
  end

  def create
    @barbacoa= Barbacoa.new(barbacoa_params)
    @barbacoa.perfil = current_user.perfil
    @barbacoa.save
    redirect_to root_path
  end

  def edit
    @barbacoa = Barbacoa.find(params[:id])

  end

  def update
    @barbacoa = Barbacoa.find(params[:id])
    @barbacoa.update(barbacoa_params)
    redirect_to barbacoa_path(@barbacoa)
  end

  private

  def barbacoa_params
    params.require(:barbacoa).permit(:titulo,:modelo,:disponible,:descripcion,:precio,:photo)
  end

  def set_perfil
    @perfilr = Perfil.find(params[:rider_id])
  end

end

