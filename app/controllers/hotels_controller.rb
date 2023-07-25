class HotelsController < ApplicationController
  before_action :set_hotel, only: %i[ show edit update destroy ]

  # GET /hotels or /hotels.json
  def index
    if params["name"]== "delivery_time"
      @hotels = Hotel.all.sort { |a,b| a.delivery_time <=> b.delivery_time }
    elsif params["name"]== "rating"
      @hotels = Hotel.all.sort { |a,b| b.rating <=> a.rating }
    elsif params["name"]== "highprice"
      @hotels = Hotel.all.sort { |a,b| b.price <=> a.price }
    elsif params["name"]== "lowprice"
      @hotels = Hotel.all.sort { |a,b| a.price <=> b.price }
    else
      @hotels = Hotel.all
    end
  end

  # GET /hotels/1 or /hotels/1.json
  def show
    
  end

  # GET /hotels/new
  def new
    @hotel = Hotel.new
  end

  def delivery_time
    @hotels = Hotel.all.sort { |a,b| a.delivery_time <=> b.delivery_time }
  end


  def high_price
    @hotels = Hotel.all.order("price DESC")
    redirect_to hotels_path
  end

  def low_price
    @hotels = Hotel.all.order("price ASC")
    redirect_to hotels_path
  end

  def admin
    
  end


  def rating
    @hotels = Hotel.all.order("rating DESC")
    redirect_to hotels_path
  end

  # GET /hotels/1/edit
  def edit
  end

  # POST /hotels or /hotels.json
  def create
    @hotel = Hotel.new(hotel_params)

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to hotel_url(@hotel), notice: "Hotel was successfully created." }
        format.json { render :show, status: :created, location: @hotel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotels/1 or /hotels/1.json
  def update
    respond_to do |format|
      if @hotel.update(hotel_params)
        format.html { redirect_to hotel_url(@hotel), notice: "Hotel was successfully updated." }
        format.json { render :show, status: :ok, location: @hotel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1 or /hotels/1.json
  def destroy
    @hotel.destroy

    respond_to do |format|
      format.html { redirect_to hotels_url, notice: "Hotel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hotel_params
      params.require(:hotel).permit(:name, :description, :item_id)
    end
end