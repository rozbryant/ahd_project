class BuildinghoodsController < ApplicationController
  def index
    @buildinghoods = Buildinghood.all
  end

  def show
    @buildinghood = Buildinghood.find(params[:id])
  end

  def new
    @buildinghood = Buildinghood.new
  end

  def create
    @buildinghood = Buildinghood.new
    @buildinghood.building_id = params[:building_id]
    @buildinghood.neighborhood_id = params[:neighborhood_id]
    @buildinghood.created_at = params[:created_at]
    @buildinghood.updated_at = params[:updated_at]

    if @buildinghood.save
      redirect_to "/buildinghoods", :notice => "Buildinghood created successfully."
    else
      render 'new'
    end
  end

  def edit
    @buildinghood = Buildinghood.find(params[:id])
  end

  def update
    @buildinghood = Buildinghood.find(params[:id])

    @buildinghood.building_id = params[:building_id]
    @buildinghood.neighborhood_id = params[:neighborhood_id]
    @buildinghood.created_at = params[:created_at]
    @buildinghood.updated_at = params[:updated_at]

    if @buildinghood.save
      redirect_to "/buildinghoods", :notice => "Buildinghood updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @buildinghood = Buildinghood.find(params[:id])

    @buildinghood.destroy

    redirect_to "/buildinghoods", :notice => "Buildinghood deleted."
  end
end
