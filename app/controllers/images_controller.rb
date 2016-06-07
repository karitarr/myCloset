# class ImagesController < ApplicationController
#   def index
#     @clothing = Clothing.find(params[:id])
#     @images = @clothing.images
#   end

#   def upload
#     DataFile.save_file(params[:upload])
#     redirect_to images_path(:clothings_id => params[:clothing_id])
#   end
# end
