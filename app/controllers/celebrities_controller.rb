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

  private
  def celebrity_params
    params.require(:celebrity).permit(:name, :job)
  end
end