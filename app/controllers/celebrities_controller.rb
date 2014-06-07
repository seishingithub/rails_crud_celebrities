class CelebritiesController < ApplicationController

  def index
    @celebrity = Celebrity.new
    @celebrities = Celebrity.all
  end

  def create
    @celebrity = Celebrity.create(celebrity_params)
    if @celebrity.save
      redirect_to celebrities_path
    else
      render :index
    end
  end

  def show
    @celebrity = Celebrity.find(params[:id])
  end

  def edit
    @celebrity = Celebrity.find(params[:id])
  end

  def update
    @celebrity = Celebrity.find(params[:id])
    @celebrity.update_attributes!(celebrity_params)
    redirect_to celebrities_path
  end

  def destroy
    @celebrity = Celebrity.find(params[:id]).delete
    redirect_to celebrities_path

  end

  private
  def celebrity_params
    params.require(:celebrity).permit(:name, :job)
  end
end
