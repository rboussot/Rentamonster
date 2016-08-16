class MonstersController < ApplicationController

  def new
    @monster = Monster.new
  end

  def create
    @monster = Monster.save(monster_params)
    if @monster.save
      redirect_to monster_path(@monster)
    else
      render :new
    end
  end

  def show
    @monster = Monster.find(params[:id])
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :species)
  end
end
