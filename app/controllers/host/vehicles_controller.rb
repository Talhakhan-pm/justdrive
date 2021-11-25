class Host::VehiclesController < ApplicationController
  def new
    @vehicle = Vehicle.new
  end

  def edit
    @vehicle = current_user.vehicles.find(params[:id])
  end

  def index
    @vehicles = current_user.vehicles.all
  end

  def show
    @vehicle = current_user.vehicles.find(params[:id])
  end

  def create
    @vehicle = current_user.vehicles.create(wheel_params)
    if @vehicle.save
      flash[:success] = "It is not now"
      redirect_to host_vehicle_path(@vehicle)
    else
      flash.now[:errors] = 'Not done right'
      render :new
    end
  end

  def update
    @vehicle = current_user.vehicles.find(
    params[:id]
    )
    if @vehicle.update(wheel_params)
      redirect_to host_vehicle_path(@vehicle)
    else
      flash.now[:errors] = @vehicle.errors.full_messages
      render :edit
    end
  end

  def destroy
    @vehicle = current_user.vehicles.find(params[:id])
    @vehicle.update(status: :archived)
    redirect_to host_vehicles_path
  end
  

  private

  def wheel_params
    params.require(:vehicle).permit(
      :title,
      :description,
      :maker,
      :city
    )
  end
  

end
