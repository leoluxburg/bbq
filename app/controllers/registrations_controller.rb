class RegistrationsController < Devise::RegistrationsController

  def create
    super do |user|
      Perfil.create(user_id: user.id) if user.id
    end
  end

  protected

  def after_sign_up_path_for(resource)
    if resource.perfil
      edit_perfil_path(resource.perfil)
    else
      super(resource)
    end
  end

end
