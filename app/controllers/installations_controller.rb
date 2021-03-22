class InstallationsController < ApplicationController
  before_action :set_installation, only: %i[ show edit update destroy ]

  # GET /installations or /installations.json
  def index
    @installations = Installation.all
  end

  # GET /installations/1 or /installations/1.json
  def show
  end

  # GET /installations/new
  def new
    @installation = Installation.new
    @units = Unit.all
    @products = Product.all
  end

  # GET /installations/1/edit
  def edit
  end

  # POST /installations or /installations.json
  def create
    @installation = Installation.new(installation_params)

    respond_to do |format|
      if @installation.save
        format.html { redirect_to @installation, notice: "Installation was successfully created." }
        format.json { render :show, status: :created, location: @installation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @installation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /installations/1 or /installations/1.json
  def update
    respond_to do |format|
      if @installation.update(installation_params)
        format.html { redirect_to @installation, notice: "Installation was successfully updated." }
        format.json { render :show, status: :ok, location: @installation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @installation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /installations/1 or /installations/1.json
  def destroy
    @installation.destroy
    respond_to do |format|
      format.html { redirect_to installations_url, notice: "Installation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_installation
      @installation = Installation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def installation_params
      params.require(:installation).permit(:unit_id, :room_name_id, :product_id, :installer_id, :install_date)
    end
end
