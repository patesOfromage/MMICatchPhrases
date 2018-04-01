class DisquettesController < ApplicationController
  before_action :set_disquette, only: [:show, :edit, :update, :destroy]

  # GET /disquettes
  # GET /disquettes.json
  def index
    @disquettes = Disquette.all
  end

  # GET /disquettes/1
  # GET /disquettes/1.json
  def show
  end

  # GET /disquettes/new
  def new
    @disquette = Disquette.new
  end

  # GET /disquettes/1/edit
  def edit
  end

  # POST /disquettes
  # POST /disquettes.json
  def create
    @disquette = Disquette.new(disquette_params)

    respond_to do |format|
      if @disquette.save
        format.html { redirect_to @disquette, notice: 'Disquette was successfully created.' }
        format.json { render :show, status: :created, location: @disquette }
      else
        format.html { render :new }
        format.json { render json: @disquette.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disquettes/1
  # PATCH/PUT /disquettes/1.json
  def update
    respond_to do |format|
      if @disquette.update(disquette_params)
        format.html { redirect_to @disquette, notice: 'Disquette was successfully updated.' }
        format.json { render :show, status: :ok, location: @disquette }
      else
        format.html { render :edit }
        format.json { render json: @disquette.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disquettes/1
  # DELETE /disquettes/1.json
  def destroy
    @disquette.destroy
    respond_to do |format|
      format.html { redirect_to disquettes_url, notice: 'Disquette was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disquette
      @disquette = Disquette.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disquette_params
      params.require(:disquette).permit(:user_name, :disquette)
    end
end
