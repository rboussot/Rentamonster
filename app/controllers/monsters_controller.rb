class MonstersController < ApplicationController
  before_action :find_monster, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @monster = Monster.where(availability: true)
  end

  def new
    @monster = Monster.new
  end

  def create
    @monster = Monster.new(monster_params)
    @monster.user = current_user
    if @monster.save
      flash[:notice] = "Monster #{@monster.name} has been added !"
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

  def destroy
    @monster.destroy
    redirect_to monsters_path
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :species, :title, :gender, :birthdate, :size, :weight, :behavior, :description, :food, :exercise, :availability, :price, :photo)
  end

  def find_monster
    @monster = Monster.find(params[:id])
  end
end
