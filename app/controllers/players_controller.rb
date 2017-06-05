class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  
  # GET /players
  # GET /players.json
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
  @player = Player.new
  @team=Team.toShow
  end

  # GET /players/1/edit
  def edit
  @team=Team.toShow
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)
  	@team=Team.toShow
    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, mensaje: 'La/el Player fue creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'La/el Player fue actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'La/el Player fue destruido satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
	  
       params.require(:player).permit( :name, :nickName, :team_id, attendance_ids:[], saving_ids:[])
    end
end
