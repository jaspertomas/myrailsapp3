class CellTypesController < ApplicationController
  before_action :set_cell_type, only: [:show, :edit, :update, :destroy]

  # GET /cell_types
  # GET /cell_types.json
  def index
    @cell_types = CellType.all
  end

  # GET /cell_types/1
  # GET /cell_types/1.json
  def show
  end

  # GET /cell_types/new
  def new
    @cell_type = CellType.new
  end

  # GET /cell_types/1/edit
  def edit
  end

  # POST /cell_types
  # POST /cell_types.json
  def create
    @cell_type = CellType.new(cell_type_params)

    respond_to do |format|
      if @cell_type.save
        format.html { redirect_to @cell_type, notice: 'Cell type was successfully created.' }
        format.json { render :show, status: :created, location: @cell_type }
      else
        format.html { render :new }
        format.json { render json: @cell_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cell_types/1
  # PATCH/PUT /cell_types/1.json
  def update
    respond_to do |format|
      if @cell_type.update(cell_type_params)
        format.html { redirect_to @cell_type, notice: 'Cell type was successfully updated.' }
        format.json { render :show, status: :ok, location: @cell_type }
      else
        format.html { render :edit }
        format.json { render json: @cell_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cell_types/1
  # DELETE /cell_types/1.json
  def destroy
    @cell_type.destroy
    respond_to do |format|
      format.html { redirect_to cell_types_url, notice: 'Cell type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cell_type
      @cell_type = CellType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cell_type_params
      params.require(:cell_type).permit(:name, :description, :values)
    end
end
