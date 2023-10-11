class KeyMastersController < ApplicationController
  before_action :set_key_master, only: %i[ show edit update destroy ]

  # GET /key_masters or /key_masters.json
  def index
    @key_masters = KeyMaster.all
  end

  # GET /key_masters/1 or /key_masters/1.json
  def show
  end

  # GET /key_masters/new
  def new
    @key_master = KeyMaster.new
  end

  # GET /key_masters/1/edit
  def edit
  end

  # POST /key_masters or /key_masters.json
  def create
    @key_master = KeyMaster.new(key_master_params)

    respond_to do |format|
      if @key_master.save
        format.html { redirect_to key_master_url(@key_master), notice: "Key master was successfully created." }
        format.json { render :show, status: :created, location: @key_master }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @key_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /key_masters/1 or /key_masters/1.json
  def update
    respond_to do |format|
      if @key_master.update(key_master_params)
        format.html { redirect_to key_master_url(@key_master), notice: "Key master was successfully updated." }
        format.json { render :show, status: :ok, location: @key_master }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @key_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /key_masters/1 or /key_masters/1.json
  def destroy
    @key_master.destroy

    respond_to do |format|
      format.html { redirect_to key_masters_url, notice: "Key master was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_key_master
      @key_master = KeyMaster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def key_master_params
      params.require(:key_master).permit(:room_name, :management_room)
    end
end
