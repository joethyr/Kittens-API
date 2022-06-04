class KittensController < ApplicationController
  before_action :set_kitten, only: %i[ show edit update destroy ]

  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.json {render json: @kittens }
    end
  end

  def show
  end

  def new
    @kitten = Kitten.new
  end

  def edit
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      flash[:notice] = "Your kitten was successfully created."
      redirect_to kitten_url(@kitten)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @kitten.update(kitten_params)
      flash[:notice] = "Your kitten was successfully updated."
      redirect_to kitten_url(@kitten)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @kitten.destroy

    flash[:notice] = "Your kitten was successfully destroyed."
    redirect_to kittens_url
  end


  private

  def set_kitten
    @kitten = Kitten.find(params[:id])
  end

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end

end
