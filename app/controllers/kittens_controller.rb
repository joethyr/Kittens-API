class KittensController < ApplicationController
  before_action :set_kitten, only: %i[ show edit update destroy ]

  def index
    @kittens = Kitten.all
  end

  def show
  end

  def new
    @kitten = Kitten.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_kitten
    @kitten = Kitten.find(params[:id])
  end

  def kitten_params
  end

end
