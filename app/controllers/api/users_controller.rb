class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jbuilder'
  end
end
