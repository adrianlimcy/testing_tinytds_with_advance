class MifsController < ApplicationController
  before_action :set_mif, only: [:show, :edit, :update, :destroy]

  # GET /mifs
  # GET /mifs.json
  def index
    @mifs = Mif.all
  end

  # GET /mifs/1
  # GET /mifs/1.json
  def show
  end

  # GET /mifs/new
  def new
    @mif = Mif.new
  end

  # GET /mifs/1/edit
  def edit
  end

  # POST /mifs
  # POST /mifs.json
  def create
    @mif = Mif.new(mif_params)

    respond_to do |format|
      if @mif.save
        format.html { redirect_to @mif, notice: 'Mif was successfully created.' }
        format.json { render :show, status: :created, location: @mif }
      else
        format.html { render :new }
        format.json { render json: @mif.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mifs/1
  # PATCH/PUT /mifs/1.json
  def update
    respond_to do |format|
      if @mif.update(mif_params)
        format.html { redirect_to @mif, notice: 'Mif was successfully updated.' }
        format.json { render :show, status: :ok, location: @mif }
      else
        format.html { render :edit }
        format.json { render json: @mif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mifs/1
  # DELETE /mifs/1.json
  def destroy
    @mif.destroy
    respond_to do |format|
      format.html { redirect_to mifs_url, notice: 'Mif was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mif
      @mif = Mif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mif_params
      params.fetch(:mif, {})
    end
end
