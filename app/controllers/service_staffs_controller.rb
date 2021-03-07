class ServiceStaffsController < ApplicationController
  before_action :set_service_staff, only: %i[ show edit update destroy ]

  # GET /service_staffs or /service_staffs.json
  def index
    @service_staffs = ServiceStaff.all
  end

  # GET /service_staffs/1 or /service_staffs/1.json
  def show
  end

  # GET /service_staffs/new
  def new
    @service_staff = ServiceStaff.new
  end

  # GET /service_staffs/1/edit
  def edit
  end

  # POST /service_staffs or /service_staffs.json
  def create
    @service_staff = ServiceStaff.new(service_staff_params)

    respond_to do |format|
      if @service_staff.save
        format.html { redirect_to @service_staff, notice: "Service staff was successfully created." }
        format.json { render :show, status: :created, location: @service_staff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_staffs/1 or /service_staffs/1.json
  def update
    respond_to do |format|
      if @service_staff.update(service_staff_params)
        format.html { redirect_to @service_staff, notice: "Service staff was successfully updated." }
        format.json { render :show, status: :ok, location: @service_staff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_staffs/1 or /service_staffs/1.json
  def destroy
    @service_staff.destroy
    respond_to do |format|
      format.html { redirect_to service_staffs_url, notice: "Service staff was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_staff
      @service_staff = ServiceStaff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_staff_params
      params.require(:service_staff).permit(:emp_id, :department)
    end
end
