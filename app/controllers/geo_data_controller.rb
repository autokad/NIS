class GeoDataController < ApplicationController
  before_action :set_geo_datum, only: [:show, :edit, :update, :destroy]
	skip_before_action :verify_authenticity_token, only: [:destroy]
  # GET /geo_data
  # GET /geo_data.json
  def index
    @geo_data = GeoDatum.all
  end

  # GET /geo_data/1
  # GET /geo_data/1.json
  def show
  end

  # GET /geo_data/new
  def new
    @geo_datum = GeoDatum.new
  end

  # GET /geo_data/1/edit
  def edit
  end

  # POST /geo_data
  # POST /geo_data.json
  def create
    @geo_datum = GeoDatum.new(geo_datum_params)

    respond_to do |format|
      if @geo_datum.save
        format.html { redirect_to @geo_datum, notice: 'Geo datum was successfully created.' }
        format.json { render :show, status: :created, location: @geo_datum }
      else
        format.html { render :new }
        format.json { render json: @geo_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geo_data/1
  # PATCH/PUT /geo_data/1.json
  def update
    respond_to do |format|
      if @geo_datum.update(geo_datum_params)
        format.html { redirect_to @geo_datum, notice: 'Geo datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @geo_datum }
      else
        format.html { render :edit }
        format.json { render json: @geo_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geo_data/1
  # DELETE /geo_data/1.json
  def destroy
    @geo_datum.destroy
    respond_to do |format|
      format.html { redirect_to geo_data_url, notice: 'Geo datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
	def import
		GeoDatum.import(params[:file])
		redirect_to root_url, notice: "Products imported."
	end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geo_datum
      @geo_datum = GeoDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geo_datum_params
      params.require(:geo_datum).permit(:geoId, :geoYear, :geoName, :geoValue, :dataId, :dataYear, :dataName, :dataValue)
    end
end
