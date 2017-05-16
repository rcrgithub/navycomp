class NvoccsController < ApplicationController
    # before_action :set_nvocc, only: [:show, :edit, :update, :destroy]

    # GET /nvoccs
    # GET /nvoccs.json
    def index
        @nvoccs = Nvocc.all
    end

    # GET /nvoccs/1
    # GET /nvoccs/1.json
    def show
        @nvocc = Nvocc.find(params[:id])
    end

    # GET /nvoccs/new
    def new
        @nvocc = Nvocc.new
    end

    # GET /nvoccs/1/edit
    def edit
        @nvocc = Nvocc.find(params[:id])
    end

    # POST /nvoccs
    # POST /nvoccs.json
    def create
        @nvocc = Nvocc.new(nvocc_params)

        respond_to do |format|
            if @nvocc.save
                format.html { redirect_to @nvocc, notice: 'Nvocc was successfully created.' }
                format.json { render :show, status: :created, location: @nvocc }
            else
                format.html { render :new }
                format.json { render json: @nvocc.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /nvoccs/1
    # PATCH/PUT /nvoccs/1.json
    def update
        @nvocc = Nvocc.find(params[:id])

        if @nvocc.update(nvocc_params)
            redirect_to @nvocc
        else
            render 'edit'
        end
  end

    # DELETE /nvoccs/1
    # DELETE /nvoccs/1.json
    # def destroy
    #     @nvocc.destroy
    #     respond_to do |format|
    #         format.html { redirect_to nvoccs_url, notice: 'Nvocc was successfully destroyed.' }
    #         format.json { head :no_content }
    #     end
    # end
    def destroy
        @nvocc = Nvocc.find(params[:id])
        @nvocc.destroy

        redirect_to nvoccs_path
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_nvocc
        @nvocc = Nvocc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nvocc_params
        params.require(:nvocc).permit(:id, :city_id, :nvocc_name, :tax_id_vat, :address, :phone, :email,
                                      :website, :status_nvocc)
       end
    end
