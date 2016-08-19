class UserProfile < ApplicationRecord


  def index
    @user_profiles = UserProfile.all
  end


end
