class BuildingAttributesController < ApplicationController
  def index
    @building_attributes = BuildingAttribute.all
  end

  def show
    @building_attribute = BuildingAttribute.find(params[:id])
  end

  def new
    @building_attribute = BuildingAttribute.new
  end

  def create
    @building_attribute = BuildingAttribute.new
    @building_attribute.building_id = params[:building_id]
    @building_attribute.ownership = params[:ownership]
    @building_attribute.unit_count = params[:unit_count]
    @building_attribute.stories = params[:stories]
    @building_attribute.notes = params[:notes]
    @building_attribute.created_at = params[:created_at]
    @building_attribute.updated_at = params[:updated_at]

    if @building_attribute.save
      redirect_to "/building_attributes", :notice => "Building attribute created successfully."
    else
      render 'new'
    end
  end

  def edit
    @building_attribute = BuildingAttribute.find(params[:id])
  end

  def update
    @building_attribute = BuildingAttribute.find(params[:id])

    @building_attribute.building_id = params[:building_id]
    @building_attribute.ownership = params[:ownership]
    @building_attribute.unit_count = params[:unit_count]
    @building_attribute.stories = params[:stories]
    @building_attribute.notes = params[:notes]
    @building_attribute.created_at = params[:created_at]
    @building_attribute.updated_at = params[:updated_at]

    if @building_attribute.save
      redirect_to "/building_attributes", :notice => "Building attribute updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @building_attribute = BuildingAttribute.find(params[:id])

    @building_attribute.destroy

    redirect_to "/building_attributes", :notice => "Building attribute deleted."
  end
end
