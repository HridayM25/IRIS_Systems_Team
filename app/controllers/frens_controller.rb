class FrensController < ApplicationController
  before_action :set_fren, only: %i[ show edit update destroy ]

  # GET /frens or /frens.json
  def index
    @frens = Fren.all
  end

  # GET /frens/1 or /frens/1.json
  def show
  end

  # GET /frens/new
  def new
    @fren = Fren.new
  end

  # GET /frens/1/edit
  def edit
  end

  # POST /frens or /frens.json
  def create
    @fren = Fren.new(fren_params)

    respond_to do |format|
      if @fren.save
        format.html { redirect_to fren_url(@fren), notice: "Fren was successfully created." }
        format.json { render :show, status: :created, location: @fren }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fren.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frens/1 or /frens/1.json
  def update
    respond_to do |format|
      if @fren.update(fren_params)
        format.html { redirect_to fren_url(@fren), notice: "Fren was successfully updated." }
        format.json { render :show, status: :ok, location: @fren }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fren.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frens/1 or /frens/1.json
  def destroy
    @fren.destroy

    respond_to do |format|
      format.html { redirect_to frens_url, notice: "Fren was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fren
      @fren = Fren.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fren_params
      params.require(:fren).permit(:first_name, :last_name, :email)
    end
end
