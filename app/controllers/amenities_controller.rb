class AmenitiesController < ApplicationController
  def index
    @amenities = Amenity.all
  end

  def show
    @amenity = Amenity.find(params[:id])
  end

  def new
    @amenity = Amenity.new
  end

  def create
    @amenity = Amenity.new
    @amenity.building_id = params[:building_id]
    @amenity.parking = params[:parking]
    @amenity.guest_parking = params[:guest_parking]
    @amenity.doorperson = params[:doorperson]
    @amenity.fitness = params[:fitness]
    @amenity.biz_center = params[:biz_center]
    @amenity.pool = params[:pool]
    @amenity.package_receiving = params[:package_receiving]
    @amenity.catering = params[:catering]
    @amenity.housekeeping = params[:housekeeping]
    @amenity.party_room = params[:party_room]
    @amenity.bike_storage = params[:bike_storage]
    @amenity.storage = params[:storage]
    @amenity.dry_cleaning = params[:dry_cleaning]
    @amenity.conf_room = params[:conf_room]
    @amenity.sundeck = params[:sundeck]
    @amenity.spa = params[:spa]
    @amenity.guest_stay = params[:guest_stay]
    @amenity.restaurant = params[:restaurant]
    @amenity.private_club = params[:private_club]
    @amenity.concierge = params[:concierge]
    @amenity.created_at = params[:created_at]
    @amenity.updated_at = params[:updated_at]

    if @amenity.save
      redirect_to "/amenities", :notice => "Amenity created successfully."
    else
      render 'new'
    end
  end

  def edit
    @amenity = Amenity.find(params[:id])
  end

  def update
    @amenity = Amenity.find(params[:id])

    @amenity.building_id = params[:building_id]
    @amenity.parking = params[:parking]
    @amenity.guest_parking = params[:guest_parking]
    @amenity.doorperson = params[:doorperson]
    @amenity.fitness = params[:fitness]
    @amenity.biz_center = params[:biz_center]
    @amenity.pool = params[:pool]
    @amenity.package_receiving = params[:package_receiving]
    @amenity.catering = params[:catering]
    @amenity.housekeeping = params[:housekeeping]
    @amenity.party_room = params[:party_room]
    @amenity.bike_storage = params[:bike_storage]
    @amenity.storage = params[:storage]
    @amenity.dry_cleaning = params[:dry_cleaning]
    @amenity.conf_room = params[:conf_room]
    @amenity.sundeck = params[:sundeck]
    @amenity.spa = params[:spa]
    @amenity.guest_stay = params[:guest_stay]
    @amenity.restaurant = params[:restaurant]
    @amenity.private_club = params[:private_club]
    @amenity.concierge = params[:concierge]
    @amenity.created_at = params[:created_at]
    @amenity.updated_at = params[:updated_at]

    if @amenity.save
      redirect_to "/amenities", :notice => "Amenity updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @amenity = Amenity.find(params[:id])

    @amenity.destroy

    redirect_to "/amenities", :notice => "Amenity deleted."
  end
end
