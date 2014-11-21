class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def show
    @address = Address.find(params[:id])
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new
    @address.streetaddress = params[:streetaddress]
    @address.city = params[:city]
    @address.state = params[:state]
    @address.zip = params[:zip]

    if @address.save
      redirect_to "/addresses", :notice => "Address created successfully."
    else
      render 'new'
    end
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])

    @address.streetaddress = params[:streetaddress]
    @address.city = params[:city]
    @address.state = params[:state]
    @address.zip = params[:zip]

    if @address.save
      redirect_to "/addresses", :notice => "Address updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @address = Address.find(params[:id])

    @address.destroy

    redirect_to "/addresses", :notice => "Address deleted."
  end
end
