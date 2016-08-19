class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def show
    @monsters = Monster.where(user: current_user)
  end



  private

  def find_user
    @user = User.find(params[:id])
  end


end
