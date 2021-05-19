class CarInfosController < ApplicationController
  before_action :set_car_info, only: [:show, :edit, :update, :destroy]

  # GET /car_infos
  def index
    @car_infos = CarInfo.all
  end

  # GET /car_infos/1
  def show
  end

  # GET /car_infos/new
  def new
    @car_info = CarInfo.new
  end

  # GET /car_infos/1/edit
  def edit
  end

  # POST /car_infos
  def create
    @car_info = CarInfo.new(car_info_params)

    if @car_info.save
      redirect_to @car_info, notice: 'Car info was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /car_infos/1
  def update
    if @car_info.update(car_info_params)
      redirect_to @car_info, notice: 'Car info was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /car_infos/1
  def destroy
    @car_info.destroy
    redirect_to car_infos_url, notice: 'Car info was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_info
      @car_info = CarInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_info_params
      params.require(:car_info).permit(:user_id, :car_mark, :car_number, :car_lease_info, :misc_info, :car_type)
    end
end
