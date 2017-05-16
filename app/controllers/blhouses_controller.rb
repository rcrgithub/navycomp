class BlhousesController < ApplicationController
  before_action :set_blhouse, only: [:show, :edit, :update, :destroy]

  # GET /blhouses
  # GET /blhouses.json
  def index
    @blhouses = Blhouse.all
  end

  # GET /blhouses/1
  # GET /blhouses/1.json
  def show
  end

  # GET /blhouses/new
  def new
    @blhouse = Blhouse.new
  end

  # GET /blhouses/1/edit
  def edit
  end

  # POST /blhouses
  # POST /blhouses.json
  def create
    @blhouse = Blhouse.new(blhouse_params)

    respond_to do |format|
      if @blhouse.save
        format.html { redirect_to @blhouse, notice: 'Blhouse was successfully created.' }
        format.json { render :show, status: :created, location: @blhouse }
      else
        format.html { render :new }
        format.json { render json: @blhouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blhouses/1
  # PATCH/PUT /blhouses/1.json
  def update
    respond_to do |format|
      if @blhouse.update(blhouse_params)
        format.html { redirect_to @blhouse, notice: 'Blhouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @blhouse }
      else
        format.html { render :edit }
        format.json { render json: @blhouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blhouses/1
  # DELETE /blhouses/1.json
  def destroy
    @blhouse.destroy
    respond_to do |format|
      format.html { redirect_to blhouses_url, notice: 'Blhouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blhouse
      @blhouse = Blhouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blhouse_params
      params.fetch(:blhouse, {})
    end
end
