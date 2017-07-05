class InventoriesController < ApplicationController
    def show
        @inventory = Inventory.find(params[:id])
    end
    
    def index
        #@inventories = Inventory.search(params[:search])
        @inventories = Inventory.search(params[:search]).paginate(page: params[:page], per_page: 10)
        #@inventories = Inventory.all.paginate(page: params[:page], per_page: 10)
       # @inventories = Inventory.all
    end
    
    def new
        @inventory = Inventory.new
    end
    
    def create
        @inventory = Inventory.new(inventory_params)
        
        
        if @inventory.save
            redirect_to @inventory
        else
            render 'new'
        end
    end
    
    def edit
        @inventory = Inventory.find(params[:id])
    end
    
    def update
        @inventory = Inventory.find(params[:id])
        if @inventory.update(inventory_params)
            redirect_to @inventory
        else
            render 'edit'
        end
    end
    
    def destroy
        @inventory = Inventory.find(params[:id])
        @inventory.destroy
        
        redirect_to inventories_path
    end
end

private 
def inventory_params
    params.require(:inventory).permit(:product_name, :brand_name, :item_id, :upc_code, :color, :department, :size, :condition, :fabric_type, :shipping_weight, :sku, :asin, :quantity, :cost_price, :sell_price, :key_product_features, :product_description, :search_terms, :status, :listing_in_usa, :listing_in_canada, :listing_in_mexico)
    
end

