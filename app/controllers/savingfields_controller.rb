class SavingfieldsController < ApplicationController
  before_action :set_savingfield, only: [:show, :edit, :update, :destroy]
  
  # GET /savingfields
  # GET /savingfields.json
  def index
    @savingfields = Savingfield.all
  end

  # GET /savingfields/1
  # GET /savingfields/1.json
  def show
  end

  # GET /savingfields/new
  def new
  @savingfield = Savingfield.new
  @saving=Saving.all
  @field=Field.all
  end

  # GET /savingfields/1/edit
  def edit
  @saving=Saving.all
  @field=Field.all
  end

  # POST /savingfields
  # POST /savingfields.json
  def create
    @savingfield = Savingfield.new(savingfield_params)
  	@saving=Saving.all
  	@field=Field.all
    respond_to do |format|
      if @savingfield.save
        format.html { redirect_to @savingfield, mensaje: 'La/el Savingfield fue creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @savingfield }
      else
        format.html { render :new }
        format.json { render json: @savingfield.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /savingfields/1
  # PATCH/PUT /savingfields/1.json
  def update
    respond_to do |format|
      if @savingfield.update(savingfield_params)
        format.html { redirect_to @savingfield, notice: 'La/el Savingfield fue actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @savingfield }
      else
        format.html { render :edit }
        format.json { render json: @savingfield.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /savingfields/1
  # DELETE /savingfields/1.json
  def destroy
    @savingfield.destroy
    respond_to do |format|
      format.html { redirect_to savingfields_url, notice: 'La/el Savingfield fue destruido satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_savingfield
      @savingfield = Savingfield.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def savingfield_params
	  
       params.require(:savingfield).permit( :saving_id, :field_id)
    end
end
