class ActorsController < ApplicationController
  def index
  end

  def new
    @actor = Actor.new
  end
  def create
    @actor = Actor.new(actor_params)

    if @actor.save
      redirect_to actors_path
      #flash[:notice] = "El blog ha sido guardado excitosamente"
    else
      render :new
    end

  end
  private
    def actor_params
      params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
    end
end
