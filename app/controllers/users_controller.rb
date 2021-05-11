class UsersController < ApplicationController
  before_action :authenticate_user!, expect: [:show]

  def show
    @user = User.find(params[:id])
    @name = current_user.name
    @prototype = current_user.prototypes
  end
end