class InstallersController < ApplicationController
  before_action :set_installer, only: %i[ show edit update destroy ]

  # GET /installers or /installers.json
  def index
    @installers = Installer.all
  end

  # GET /installers/1 or /installers/1.json
  def show
  end

  # GET /installers/new
  def new
    @installer = Installer.new
  end

  # GET /installers/1/edit
  def edit
  end

  # POST /installers or /installers.json
  def create
    @installer = Installer.new(installer_params)

    respond_to do |format|
      if @installer.save
        format.html { redirect_to @installer, notice: "Installer was successfully created." }
        format.json { render :show, status: :created, location: @installer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @installer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /installers/1 or /installers/1.json
  def update
    respond_to do |format|
      if @installer.update(installer_params)
        format.html { redirect_to @installer, notice: "Installer was successfully updated." }
        format.json { render :show, status: :ok, location: @installer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @installer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /installers/1 or /installers/1.json
  def destroy
    @installer.destroy
    respond_to do |format|
      format.html { redirect_to installers_url, notice: "Installer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_installer
      @installer = Installer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def installer_params
      params.require(:installer).permit(:name)
    end
end
