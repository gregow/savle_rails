class CamisetaController < ApplicationController
  before_action :set_camisetum, only: [:show, :edit, :update, :destroy]

  # GET /camiseta
  # GET /camiseta.json
  def index
    @camiseta = Camisetum.all
  end

  # GET /camiseta/1
  # GET /camiseta/1.json
  def show
  end

  # GET /camiseta/new
  def new
    @camisetum = Camisetum.new
  end

  # GET /camiseta/1/edit
  def edit
  end

  # POST /camiseta
  # POST /camiseta.json
  def create
    @camisetum = Camisetum.new(camisetum_params)

    respond_to do |format|
      if @camisetum.save
        format.html { redirect_to @camisetum, notice: 'Camisetum was successfully created.' }
        format.json { render :show, status: :created, location: @camisetum }
      else
        format.html { render :new }
        format.json { render json: @camisetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /camiseta/1
  # PATCH/PUT /camiseta/1.json
  def update
    respond_to do |format|
      if @camisetum.update(camisetum_params)
        format.html { redirect_to @camisetum, notice: 'Camisetum was successfully updated.' }
        format.json { render :show, status: :ok, location: @camisetum }
      else
        format.html { render :edit }
        format.json { render json: @camisetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /camiseta/1
  # DELETE /camiseta/1.json
  def destroy
    @camisetum.destroy
    respond_to do |format|
      format.html { redirect_to camiseta_url, notice: 'Camisetum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camisetum
      @camisetum = Camisetum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def camisetum_params
      params.require(:camisetum).permit(:nome, :medida_1)
    end
end
