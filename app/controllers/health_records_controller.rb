class HealthRecordsController < ApplicationController
  before_action :set_health_record, only: %i[ show edit update destroy ]

  # GET /health_records or /health_records.json
  def index
    @pet = Pet.find(params[:pet_id])
    @health_records = @pet.health_records
    
  end

  # GET /health_records/1 or /health_records/1.json
  def show
      
    @health_record = HealthRecord.find(params[:id])
    @pet = @health_record.pet

  end

  # GET /health_records/new
  def new
    @pet = Pet.find(params[:pet_id])
    @health_record = HealthRecord.new(pet_id: @pet.id)
  end

  # GET /health_records/1/edit
  def edit
  end

  # POST /health_records or /health_records.json
  def create
    @health_record = HealthRecord.new(health_record_params)

    respond_to do |format|
      if @health_record.save
        format.html { redirect_to pet_health_records_url(@health_record), notice: "Health record was successfully created." }
        format.json { render :show, status: :created, location: @health_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @health_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_records/1 or /health_records/1.json
  def update
    respond_to do |format|
      if @health_record.update(health_record_params)
        format.html { redirect_to health_record_url(@health_record), notice: "Health record was successfully updated." }
        format.json { render :show, status: :ok, location: @health_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @health_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_records/1 or /health_records/1.json
  def destroy
    @health_record.destroy!

    respond_to do |format|
      format.html { redirect_to pet_health_records_url(@pet), notice: "Health record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_record
      @health_record = HealthRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def health_record_params
      params.require(:health_record).permit(:pet_id, :vet_id, :health_treatments, :health_notes)
    end
end