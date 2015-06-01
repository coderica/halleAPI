class ApplicationController < ActionController::API
  def index
    @user = User.all
    @space = Space.all
    return {user: @user, space: @space}.to_json
  end
end
