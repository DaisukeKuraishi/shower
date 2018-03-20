class DropsController < ApplicationController

  before_action :set_drop, only: [:show, :edit, :update, :destroy]

  def index

    @drops = Drop.all

  end

  def show
  end

  def new

    @drop = Drop.new

  end

  def create
    @drop = Drop.new(drop_params)
    if @drop.save
      redirect_to drops_path
    else
      flash.now[:alert] = @drop.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    @drop.update(drop_params)
    redirect_to drops_path
  end

  def destroy
    @drop = Drop.find(params[:id])
    @drop.destroy
    redirect_to drops_path
  end

  private

  def set_drop
    @drop = Drop.find(params[:id])
  end


  def drop_params
    params.require(:drop).permit(:title, :reason, :p_key, :sns_url)
  end

end
