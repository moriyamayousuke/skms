class LoanDetailsController < ApplicationController
  before_action :set_loan_detail, only: %i[ show edit update destroy ]

  # GET /loan_details or /loan_details.json
  def index
    @loan_details = LoanDetail.all
  end

  # GET /loan_details/1 or /loan_details/1.json
  def show

  end

  # GET /loan_details/new
  def new
    @loan_detail = LoanDetail.new
    @key_masters = KeyMaster.all
  end

  # GET /loan_details/1/edit
  def edit
    @key_masters = KeyMaster.all


  end

  # POST /loan_details or /loan_details.json
  def create
    @loan_detail = LoanDetail.new(loan_detail_params)
    @loan_detail[:start_date] = Time.now
    respond_to do |format|
      if @loan_detail.save
        format.html { redirect_to loan_detail_url(@loan_detail), notice: "Loan detail was successfully created." }
        format.json { render :show, status: :created, location: @loan_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loan_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_details/1 or /loan_details/1.json
  def update
    @loan_detail[:return_date] = Time.now
    respond_to do |format|
      if @loan_detail.update(loan_detail_params)
        format.html { redirect_to loan_detail_url(@loan_detail), notice: "Loan detail was successfully updated." }
        format.json { render :show, status: :ok, location: @loan_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loan_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_details/1 or /loan_details/1.json
  def destroy
    @loan_detail.destroy

    respond_to do |format|
      format.html { redirect_to loan_details_url, notice: "Loan detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_detail
      @loan_detail = LoanDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loan_detail_params
      params.require(:loan_detail).permit(:key_master_id, :start_date, :return_date, :grade, :class_number, :user_name)
    end
end
