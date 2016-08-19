class UserProfilesController < ApplicationController


  def index
    @user_profiles = UserProfile.all
  end


end
