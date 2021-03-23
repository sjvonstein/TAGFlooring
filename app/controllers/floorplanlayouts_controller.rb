class FloorplanlayoutsController < ApplicationController
  before_action :set_floorplanlayout, only: %i[ show edit update destroy ]

  # GET /floorplanlayouts or /floorplanlayouts.json
  def index
    @floorplanlayouts = Floorplanlayout.all
  end

  # GET /floorplanlayouts/1 or /floorplanlayouts/1.json
  def show
  end

  # GET /floorplanlayouts/new
  def new
    @floorplanlayout = Floorplanlayout.new
  end

  # GET /floorplanlayouts/1/edit
  def edit
  end

  # POST /floorplanlayouts or /floorplanlayouts.json
  def create
    @floorplanlayout = Floorplanlayout.new(floorplanlayout_params)

    respond_to do |format|
      if @floorplanlayout.save
        format.html { redirect_to @floorplanlayout, notice: "Floorplanlayout was successfully created." }
        format.json { render :show, status: :created, location: @floorplanlayout }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @floorplanlayout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floorplanlayouts/1 or /floorplanlayouts/1.json
  def update
    respond_to do |format|
      if @floorplanlayout.update(floorplanlayout_params)
        format.html { redirect_to @floorplanlayout, notice: "Floorplanlayout was successfully updated." }
        format.json { render :show, status: :ok, location: @floorplanlayout }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @floorplanlayout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floorplanlayouts/1 or /floorplanlayouts/1.json
  def destroy
    @floorplanlayout.destroy
    respond_to do |format|
      format.html { redirect_to floorplanlayouts_url, notice: "Floorplanlayout was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_floorplanlayout
      @floorplanlayout = Floorplanlayout.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def floorplanlayout_params
      params.require(:floorplanlayout).permit(:floorplan_id, :room_name_id)
    end
end
