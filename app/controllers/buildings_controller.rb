class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def show
    @building = Building.find(params[:id])
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new
    @building.name = params[:name]
    @building.address_id = params[:address_id]
    @building.image_url = params[:image_url]
    @building.headline = params[:headline]
    @building.created_at = params[:created_at]
    @building.updated_at = params[:updated_at]

    if @building.save
      redirect_to "/buildings", :notice => "Building created successfully."
    else
      render 'new'
    end
  end

  def edit
    @building = Building.find(params[:id])
  end

  def update
    @building = Building.find(params[:id])

    @building.name = params[:name]
    @building.address_id = params[:address_id]
    @building.image_url = params[:image_url]
    @building.headline = params[:headline]
    @building.created_at = params[:created_at]
    @building.updated_at = params[:updated_at]

    if @building.save
      redirect_to "/buildings", :notice => "Building updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @building = Building.find(params[:id])

    @building.destroy

    redirect_to "/buildings", :notice => "Building deleted."
  end
end
