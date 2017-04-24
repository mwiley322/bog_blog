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
      redirect_to creatures_path
    end
  end

  def show
  end

  def edit
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
