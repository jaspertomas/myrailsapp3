class CellsController < ApplicationController
  before_action :set_cell, only: [:show, :edit, :update, :destroy]

  def processDashboard
    params.permit(:command)
    
    @settings = Setting.fetchAllAsHash

    command=params[:command]
    case command
      #if command is valid
      when "up","down","left","right"; 
      else 
        command=""
    end    
    
    #update command setting
    commandsetting=@settings["Command"]
    commandsetting.value=command
    commandsetting.save
    
    process_command(command)
    
    redirect_to cells_dashboard_url
  end
  def dashboard
    @cells = Cell.fetchAllAsNestedArray
    @settings = Setting.fetchAllAsHash
    @x=@settings['X'].value.to_i;
    @y=@settings['Y'].value.to_i;
  end

  # GET /cells
  # GET /cells.json
  def index
    @cells = Cell.all
  end

  # GET /cells/1
  # GET /cells/1.json
  def show
  end

  # GET /cells/new
  def new
    @cell = Cell.new
  end

  # GET /cells/1/edit
  def edit
  end

  # POST /cells
  # POST /cells.json
  def create
    @cell = Cell.new(cell_params)

    respond_to do |format|
      if @cell.save
        format.html { redirect_to @cell, notice: 'Cell was successfully created.' }
        format.json { render :show, status: :created, location: @cell }
      else
        format.html { render :new }
        format.json { render json: @cell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cells/1
  # PATCH/PUT /cells/1.json
  def update
    respond_to do |format|
      if @cell.update(cell_params)
        format.html { redirect_to @cell, notice: 'Cell was successfully updated.' }
        format.json { render :show, status: :ok, location: @cell }
      else
        format.html { render :edit }
        format.json { render json: @cell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cells/1
  # DELETE /cells/1.json
  def destroy
    @cell.destroy
    respond_to do |format|
      format.html { redirect_to cells_url, notice: 'Cell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cell
      @cell = Cell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cell_params
      params.require(:cell).permit(:x, :y, :type_id, :value)
    end
    
    def process_command(command)
      @x=@settings['X'].value.to_i;
      @y=@settings['Y'].value.to_i;
      
      case command
        #if command is valid
        #if command is up, update y = y - 1 unless cell with coordinates (x,y-1) is a wall
        #cell_type_id=4 means wall
        when "up";
          next_cell=Cell.where(x: @x).where(y: @y-1).take          
          @settings['Y'].update({value:(@y-1).to_s}) if(next_cell.cell_type_id!=4)
        #if command is down, update y = y + 1 unless cell with coordinates (x,y+1) is a wall
        when "down";
          next_cell=Cell.where(x: @x).where(y: @y+1).take
          @settings['Y'].update({value:(@y+1).to_s}) if(next_cell.cell_type_id!=4)
        #if command is left, update x = x - 1 unless cell with coordinates (x-1,y) is a wall
        when "left";
          next_cell=Cell.where(x: @x-1).where(y: @y).take
          @settings['X'].update({value:(@x-1).to_s}) if(next_cell.cell_type_id!=4)
        when "right"; 
        #if command is right, update x = x + 1 unless cell with coordinates (x+1,y) is a wall
          next_cell=Cell.where(x: @x+1).where(y: @y).take
          @settings['X'].update({value:(@x+1).to_s}) if(next_cell.cell_type_id!=4)
      end    
    end
end
