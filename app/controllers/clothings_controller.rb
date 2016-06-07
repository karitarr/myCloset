# encoding: utf-8
class ClothingsController < ApplicationController
  before_action :set_clothing, only: [:show, :edit, :update, :destroy]

  # GET /clothings
  # GET /clothings.json
  def index
    @clothings = Clothing.all
  end

  # GET /clothings/1
  # GET /clothings/1.json
  def show
  end

  # GET /clothings/new
  def new
    @clothing = Clothing.new
  end

  # GET /clothings/1/edit
  def edit
  end

  # POST /clothings
  # POST /clothings.json
  def create
    @clothing = Clothing.new(clothing_params)

     # DataFile.save_file(params[:upload])
  #   # redirect_to clothings_path(:clothing_id => params[:clothing_id])
      #  uploaded_io = params[:clothing_params][:datafile]
      uploaded_io = 'test_upload_filename'


   File.open(Rails.root.join('public', 'uploads', uploaded_io), 'wb')  do |file| file.write(clothing_params[:datafile].read)
   end

    respond_to do |format|
      if @clothing.save
        format.html { redirect_to @clothing, notice: 'Clothing was successfully created.' }
        format.json { render :show, status: :created, location: @clothing }
      else
        format.html { render :new }
        format.json { render json: @clothing.errors, status: :unprocessable_entity }
      end
    end


  end



  # PATCH/PUT /clothings/1
  # PATCH/PUT /clothings/1.json
  def update
    respond_to do |format|
      if @clothing.update(clothing_params)

        format.html { redirect_to @clothing, notice: 'Clothing was successfully updated.' }
        format.json { render :show, status: :ok, location: @clothing }
      else
        format.html { render :edit }
        format.json { render json: @clothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clothings/1
  # DELETE /clothings/1.json
  def destroy
    @clothing.destroy
    respond_to do |format|
      format.html { redirect_to clothings_url, notice: 'Clothing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clothing
      @clothing = Clothing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clothing_params
      params.require(:clothing).permit(:description, :category, :brand, :color, :datafile)
    end
end
