class DepositesController < ApplicationController
  before_action :set_deposite, only: [:show, :edit, :update, :destroy]

  # GET /deposites
  # GET /deposites.json
  def index
    @deposites = Deposite.all
  end

  # GET /deposites/1
  # GET /deposites/1.json
  def show
  end

  # GET /deposites/new
  def new
    @deposite = current_user.deposites.build
  end

  # GET /deposites/1/edit
  def edit
  end

  # POST /deposites
  # POST /deposites.json
  def create
    @deposite = current_user.deposites.build(deposite_params)

    respond_to do |format|
      if @deposite.save
        format.html { redirect_to @deposite, notice: 'Deposite was successfully created.' }
        format.json { render :show, status: :created, location: @deposite }
      else
        format.html { render :new }
        format.json { render json: @deposite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deposites/1
  # PATCH/PUT /deposites/1.json
  def update
    respond_to do |format|
      if @deposite.update(deposite_params)
        format.html { redirect_to @deposite, notice: 'Deposite was successfully updated.' }
        format.json { render :show, status: :ok, location: @deposite }
      else
        format.html { render :edit }
        format.json { render json: @deposite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deposites/1
  # DELETE /deposites/1.json
  def destroy
    @deposite.destroy
    respond_to do |format|
      format.html { redirect_to deposites_url, notice: 'Deposite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deposite
      @deposite = Deposite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deposite_params
      params.require(:deposite).permit(:date, :ammount)
    end
end
