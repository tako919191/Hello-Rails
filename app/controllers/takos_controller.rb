class TakosController < ApplicationController
  before_action :set_tako, only: %i[ show edit update destroy ]

  # GET /takos or /takos.json
  def index
    @takos = Tako.all
  end

  # GET /takos/1 or /takos/1.json
  def show
  end

  # GET /takos/new
  def new
    @tako = Tako.new
  end

  # GET /takos/1/edit
  def edit
  end

  # POST /takos or /takos.json
  def create
    @tako = Tako.new(tako_params)

    respond_to do |format|
      if @tako.save
        format.html { redirect_to tako_url(@tako), notice: "Tako was successfully created." }
        format.json { render :show, status: :created, location: @tako }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tako.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /takos/1 or /takos/1.json
  def update
    respond_to do |format|
      if @tako.update(tako_params)
        format.html { redirect_to tako_url(@tako), notice: "Tako was successfully updated." }
        format.json { render :show, status: :ok, location: @tako }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tako.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /takos/1 or /takos/1.json
  def destroy
    @tako.destroy

    respond_to do |format|
      format.html { redirect_to takos_url, notice: "Tako was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tako
      @tako = Tako.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tako_params
      params.require(:tako).permit(:name, :age, :kind)
    end
end
