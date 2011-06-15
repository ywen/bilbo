class UsersController < ApplicationController
  include Devise::Controllers::InternalHelpers
  def new
    resource = build_resource({})
    respond_with_navigational(resource){ render_with_scope :new }
  end
  protected

  def build_resource(hash=nil)
    hash ||= params[resource_name] || {}
    self.resource = User.new_with_session(hash, session)
  end

  # The path used

end
