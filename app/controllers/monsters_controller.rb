class MonstersController < ApplicationController


  def index
    @monster = Monster.all
  end

  def show

  end


end
