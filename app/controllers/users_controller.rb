class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def show
    #cf before action
  end


end
