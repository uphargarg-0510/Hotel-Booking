class MydatabasesController < ApplicationController
  before_action :set_mydatabase, only: %i[ show edit update destroy ]

  # GET /mydatabases or /mydatabases.json
  def index
    @mydatabases = Mydatabase.all
  end

  # GET /mydatabases/1 or /mydatabases/1.json
  def show
  end

  # GET /mydatabases/new
  def new
    @mydatabase = Mydatabase.new
  end

  # GET /mydatabases/1/edit
  def edit
  end

  # POST /mydatabases or /mydatabases.json
  def create
    @mydatabase = Mydatabase.new(mydatabase_params)

    respond_to do |format|
      if @mydatabase.save
        format.html { redirect_to mydatabase_url(@mydatabase), notice: "Mydatabase was successfully created." }
        format.json { render :show, status: :created, location: @mydatabase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mydatabase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mydatabases/1 or /mydatabases/1.json
  def update
    respond_to do |format|
      if @mydatabase.update(mydatabase_params)
        format.html { redirect_to mydatabase_url(@mydatabase), notice: "Mydatabase was successfully updated." }
        format.json { render :show, status: :ok, location: @mydatabase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mydatabase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mydatabases/1 or /mydatabases/1.json
  def destroy
    @mydatabase.destroy

    respond_to do |format|
      format.html { redirect_to mydatabases_url, notice: "Mydatabase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mydatabase
      @mydatabase = Mydatabase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mydatabase_params
      params.require(:mydatabase).permit(:first_name, :last_name, :email, :room_type, :no_of_rooms, :start_time, :end_time, :payment_type, :total_payment, :tip)
    end
end
