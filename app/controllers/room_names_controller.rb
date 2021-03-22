class RoomNamesController < ApplicationController
  before_action :set_room_name, only: %i[ show edit update destroy ]

  # GET /room_names or /room_names.json
  def index
    @room_names = RoomName.all
  end

  # GET /room_names/1 or /room_names/1.json
  def show
  end

  # GET /room_names/new
  def new
    @room_name = RoomName.new
  end

  # GET /room_names/1/edit
  def edit
  end

  # POST /room_names or /room_names.json
  def create
    @room_name = RoomName.new(room_name_params)

    respond_to do |format|
      if @room_name.save
        format.html { redirect_to @room_name, notice: "Room name was successfully created." }
        format.json { render :show, status: :created, location: @room_name }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_names/1 or /room_names/1.json
  def update
    respond_to do |format|
      if @room_name.update(room_name_params)
        format.html { redirect_to @room_name, notice: "Room name was successfully updated." }
        format.json { render :show, status: :ok, location: @room_name }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_names/1 or /room_names/1.json
  def destroy
    @room_name.destroy
    respond_to do |format|
      format.html { redirect_to room_names_url, notice: "Room name was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_name
      @room_name = RoomName.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_name_params
      params.require(:room_name).permit(:name)
    end
end
