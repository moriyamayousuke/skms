class LoanDetailsController < ApplicationController
  before_action :set_loan_detail, only: %i[ show edit update destroy ]
  before_action :set_key_masters, only: [:new, :create, :edit, :update]
  # GET /loan_details or /loan_details.json
  def index
    @loan_details = LoanDetail.all
  end

  # GET /loan_details/1 or /loan_details/1.json
  def show
    @loan_detail = LoanDetail.new
    @loan_detail.key_master_id = params[:key_id]
  end

  # GET /loan_details/new
  def new
    @loan_detail = LoanDetail.new
    if params[:key_id].present?
      @loan_detail.key_master_id = params[:key_id]
    end
  end

  # GET /loan_details/1/edit
  def edit



  end

  # POST /loan_details or /loan_details.json
  def create
    @loan_detail = LoanDetail.new(loan_detail_params)
    @loan_detail[:start_date] = Time.now
    respond_to do |format|
      if @loan_detail.save
        format.html { redirect_to root_path, notice: "Skms was successfully created." }
        format.json { render :show, status: :created, location: @loan_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loan_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_details/1 or /loan_details/1.json
  def update
    respond_to do |format|
      if @loan_detail.update(return_date: Time.now)
        format.html { redirect_to root_path, notice: "Skms was successfully created." }
        format.json { render :show, status: :created, location: @loan_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loan_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_details/1 or /loan_details/1.json
  def destroy
    @loan_detail.destroy

    redirect_to 'http://localhost:3000'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_detail
      @loan_detail = LoanDetail.find(params[:id])
    end

    def set_key_masters
      @key_masters = KeyMaster.all
    end

    # Only allow a list of trusted parameters through.
    def loan_detail_params
         params.require(:loan_detail).permit(:key_master_id, :start_date, :return_date, :grade, :class_number, :user_name)
    end
end
