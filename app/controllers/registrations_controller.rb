class RegistrationsController < Devise::RegistrationsController
  protected
  def update_resourse(resource, params)
    resource.update_resource_without_password(params)
    
  end
end