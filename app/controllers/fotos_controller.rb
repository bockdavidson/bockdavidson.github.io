class FotosController < ApplicationController
 #Index action, photos gets listed in the order at which they were created
 def index
  @fotos = Foto.order('created_at')
 end

 #New action for creating a new photo
 def new
  @foto = Foto.new
 end

 #Create action ensures that submitted photo gets created if it meets the requirements
 def create
 	@vendor = Vendor.find(params[:vendor_id])
 	@foto = @vendor.fotos.create(photo_params)
 	redirect_to vendor_path(@vendor)

  end
  
   def destroy
        @vendor = Vendor.find(params[:vendor_id])
        @foto = @vendor.fotos.find(params[:id])
        @foto.destroy
        redirect_to vendor_path(@vendor)
    end
  
  private

 #Permitted parameters when creating a photo. This is used for security reasons.
 def photo_params
  params.require(:foto).permit(:title, :image)
 end
end

