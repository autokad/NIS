class DataunitsController < ApplicationController
  before_action :set_dataunit, only: [:show, :edit, :update, :destroy]

  # GET /dataunits
  # GET /dataunits.json
  def index
    @dataunits = Dataunit.all
  end

  # GET /dataunits/1
  # GET /dataunits/1.json
  def show
  end

  # GET /dataunits/new
  def new
    @dataunit = Dataunit.new
  end

  # GET /dataunits/1/edit
  def edit
  end

  # POST /dataunits
  # POST /dataunits.json
  
  def create
    @dataunit = Dataunit.new(dataunit_params)
	@dataunit.dataset_id=dataset_id

    respond_to do |format|
      if @dataunit.save
        format.html { redirect_to @dataunit, notice: @dataunit.user_id.to_s + 'Dataunit was successfully created.' }
        format.json { render :show, status: :created, location: @dataunit }
      else
        format.html { render :new }
        format.json { render json: @dataunit.errors, status: :unprocessable_entity }
      end
    end
  end
  

  
	def import
		logger.debug "\n params #{params}"
		Dataunit.import(params[:file],params[:dataunit][:dataset_id], current_user.id)
		redirect_to dataunits_url, notice: "Data imported."
	end

  # PATCH/PUT /dataunits/1
  # PATCH/PUT /dataunits/1.json
  def update
    respond_to do |format|
      if @dataunit.update(dataunit_params)
        format.html { redirect_to @dataunit, notice: 'Dataunit was successfully updated.' }
        format.json { render :show, status: :ok, location: @dataunit }
      else
        format.html { render :edit }
        format.json { render json: @dataunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dataunits/1
  # DELETE /dataunits/1.json
  def destroy
    @dataunit.destroy
    respond_to do |format|
      format.html { redirect_to dataunits_url, notice: 'Dataunit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dataunit
      @dataunit = Dataunit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dataunit_params
      params.require(:dataunit).permit(:geoValue, :dataValue, :dataset_id, :user_id)
    end
end
