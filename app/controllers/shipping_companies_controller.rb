class ShippingCompaniesController < ApplicationController
    #  before_action :set_shipping_company, only: [:show, :edit, :update, :destroy]

    # GET /shipping_companies
    # GET /shipping_companies.json
    def index
        @shipping_companies = ShippingCompany.all
    end

    # GET /shipping_companies/1
    # GET /shipping_companies/1.json
    def show
        @shipping_company = ShippingCompany.find(params[:id])
    end

    # GET /shipping_companies/new
    def new
        @shipping_company = ShippingCompany.new
    end

    # GET /shipping_companies/1/edit
    def edit
        @shipping_company = ShippingCompany.find(params[:id])
     end

    # POST /shipping_companies
    # POST /shipping_companies.json
    def create
        @shipping_company = ShippingCompany.new(shipping_company_params)

        respond_to do |format|
            if @shipping_company.save
                format.html { redirect_to @shipping_company, notice: 'Shipping company was successfully created.' }
                format.json { render :show, status: :created, location: @shipping_company }
            else
                format.html { render :new }
                format.json { render json: @shipping_company.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /shipping_companies/1
    # PATCH/PUT /shipping_companies/1.json
    #  def update
    #   respond_to do |format|
    #    if @shipping_company.update(shipping_company_params)
    #     format.html { redirect_to @shipping_company, notice: 'Shipping company was successfully updated.' }
    #    format.json { render :show, status: :ok, location: @shipping_company }
    # else
    #  format.html { render :edit }
    # format.json { render json: @shipping_company.errors, status: :unprocessable_entity }
    # end
    #  end
    # end
    def update
        @shipping_company = ShippingCompany.find(params[:id])

        if @shipping_company.update(shipping_company_params)
            redirect_to @shipping_company
        else
            render 'edit'
        end
    end

    # DELETE /shipping_companies/1
    # DELETE /shipping_companies/1.json

    def destroy
        @shipping_company = ShippingCompany.find(params[:id])
        @shipping_company.destroy

        redirect_to shipping_companies_path
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_shipping_company
        @shipping_company = ShippingCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #   def shipping_company_params
    #    params.fetch(:shipping_company, {})
    # end

    def shipping_company_params
        params.require(:shipping_company).permit(:id, :city_id, :shipping_comp_name, :tax_id_vat, :address, :phone, :email,
                                                 :website, :status_company)
     end
end
