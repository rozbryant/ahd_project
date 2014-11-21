class RestrictionsController < ApplicationController
  def index
    @restrictions = Restriction.all
  end

  def show
    @restriction = Restriction.find(params[:id])
  end

  def new
    @restriction = Restriction.new
  end

  def create
    @restriction = Restriction.new
    @restriction.building_id = params[:building_id]
    @restriction.pet = params[:pet]
    @restriction.rental = params[:rental]
    @restriction.credit = params[:credit]
    @restriction.reference = params[:reference]
    @restriction.interview = params[:interview]
    @restriction.created_at = params[:created_at]
    @restriction.updated_at = params[:updated_at]

    if @restriction.save
      redirect_to "/restrictions", :notice => "Restriction created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restriction = Restriction.find(params[:id])
  end

  def update
    @restriction = Restriction.find(params[:id])

    @restriction.building_id = params[:building_id]
    @restriction.pet = params[:pet]
    @restriction.rental = params[:rental]
    @restriction.credit = params[:credit]
    @restriction.reference = params[:reference]
    @restriction.interview = params[:interview]
    @restriction.created_at = params[:created_at]
    @restriction.updated_at = params[:updated_at]

    if @restriction.save
      redirect_to "/restrictions", :notice => "Restriction updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restriction = Restriction.find(params[:id])

    @restriction.destroy

    redirect_to "/restrictions", :notice => "Restriction deleted."
  end
end
