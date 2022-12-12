class CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: { code: 200, cars: @cars }
  end

  def show
    @car = Car.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @car }
    end
  end

  def new
    @car = Car.new

    respond_to do |format|
      format.html
      format.json { render json: @car }
    end
  end

  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render json: @car, status: :created }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @car = Car.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @car }
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update
    @car = Car.find(params[:id])

    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render json: @car, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def car_params
    params.require(:car).permit(:model, :brand, :user_id, :year_realeased, :featured_image)
  end
end
