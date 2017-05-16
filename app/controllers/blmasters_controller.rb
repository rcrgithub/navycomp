class BlmastersController < ApplicationController
  before_action :set_blmaster, only: [:show, :edit, :update, :destroy]

  # GET /blmasters
  # GET /blmasters.json
  def index
    @blmasters = Blmaster.all
  end

  # GET /blmasters/1
  # GET /blmasters/1.json
  def show
  end

  # GET /blmasters/new
  def new
    @blmaster = Blmaster.new
  end

  # GET /blmasters/1/edit
  def edit
  end

  # POST /blmasters
  # POST /blmasters.json
  def create
    @blmaster = Blmaster.new(blmaster_params)

    respond_to do |format|
      if @blmaster.save
        format.html { redirect_to @blmaster, notice: 'Blmaster was successfully created.' }
        format.json { render :show, status: :created, location: @blmaster }
      else
        format.html { render :new }
        format.json { render json: @blmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blmasters/1
  # PATCH/PUT /blmasters/1.json
  def update
    respond_to do |format|
      if @blmaster.update(blmaster_params)
        format.html { redirect_to @blmaster, notice: 'Blmaster was successfully updated.' }
        format.json { render :show, status: :ok, location: @blmaster }
      else
        format.html { render :edit }
        format.json { render json: @blmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blmasters/1
  # DELETE /blmasters/1.json
  def destroy
    @blmaster.destroy
    respond_to do |format|
      format.html { redirect_to blmasters_url, notice: 'Blmaster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blmaster
      @blmaster = Blmaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blmaster_params
      params.fetch(:blmaster, {})
    end
end
