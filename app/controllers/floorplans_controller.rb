class FloorplansController < ApplicationController
  before_action :set_floorplan, only: %i[ show edit update destroy ]

  # GET /floorplans or /floorplans.json
  def index
    @floorplans = Floorplan.all
  end

  # GET /floorplans/1 or /floorplans/1.json
  def show
    @floorplan = Floorplan.find(params[:id])
  end

  # GET /floorplans/new
  def new
    @floorplan = Floorplan.new
  end

  # GET /floorplans/1/edit
  def edit
  end

  # POST /floorplans or /floorplans.json
  def create
    @floorplan = Floorplan.new(floorplan_params)

    respond_to do |format|
      if @floorplan.save
        format.html { redirect_to @floorplan, notice: "Floorplan was successfully created." }
        format.json { render :show, status: :created, location: @floorplan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @floorplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floorplans/1 or /floorplans/1.json
  def update



    respond_to do |format|
      if @floorplan.update(floorplan_params)
        format.html { redirect_to @floorplan, notice: "Floorplan was successfully updated." }
        format.json { render :show, status: :ok, location: @floorplan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @floorplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floorplans/1 or /floorplans/1.json
  def destroy
    @floorplan.destroy
    respond_to do |format|
      format.html { redirect_to floorplans_url, notice: "Floorplan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_floorplan
      @floorplan = Floorplan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def floorplan_params
      params.require(:floorplan).permit(:name, :code, :community_id, :floors, { floorplan_images: [] } )
    end
end
