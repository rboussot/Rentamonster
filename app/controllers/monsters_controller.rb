class MonstersController < ApplicationController
before_action :find_monster, only: [:show, :edit, :update, :destroy]

  def index
    @monster = Monster.all
  end

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
    # cf before_action
  end

  def edit
    # cf before_action
  end

  def update
    # cf before_action
    @monster.update(monster_params)
    redirect_to monster_path(@monster)
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :species, :title, :gender, :birthdate, :size, :weight, :behavior, :description, :food, :exercise, :availability, :price)
  end

  def find_monster
    @monster = Monster.find(params[:id])
  end
end
