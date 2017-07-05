class VendorsController < ApplicationController
    def index
        @vendors = Vendor.search(params[:search]).paginate(page: params[:page], per_page: 10)
        
    end
    def show
        @vendor = Vendor.find(params[:id])
    end
    
    def new
        @vendor = Vendor.new
    end
    
    def create
        @vendor = Vendor.new(vendor_params)
        
        if @vendor.save
            redirect_to @vendor
        else
            render 'new'
        end
    end
    
    def edit
        @vendor = Vendor.find(params[:id])
    end
    
    def update
        @vendor = Vendor.find(params[:id])
        if @vendor.update (vendor_params)
            redirect_to @vendor
        else
            render 'edit'
        end
    end
    
    def destroy
        @vendor = Vendor.find(params[:id])
        @vendor.destroy
        
        redirect_to vendors_path
    end
end

private
    def vendor_params
        params.require(:vendor).permit(:company, :contact_name, :phone, :email, :moq, :cost_per_item, :payment_method, :terms, :turnover, :returns, :notes)
    end
