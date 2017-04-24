class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
    render :new
  end

  def create
   creature = Creature.new(creature_params)
   if creature.save
     redirect_to creature_path(creature)
   end
  end

  def show
    @creature = Creature.find_by_id(params[:id])
  end

  def edit
    @creature = Creature.find_by_id(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end

end
