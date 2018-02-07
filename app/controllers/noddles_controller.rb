class NoddlesController < ApplicationController
  before_action :set_noddle, only: [:show, :edit, :update, :destroy]

  # GET /noddles
  # GET /noddles.json
  def index
    @noddles = Noddle.all
  end

  # GET /noddles/1
  # GET /noddles/1.json
  def show
  end

  # GET /noddles/new
  def new
    @noddle = Noddle.new
  end

  # GET /noddles/1/edit
  def edit
  end

  # POST /noddles
  # POST /noddles.json
  def create
    @noddle = Noddle.new(noddle_params)

    respond_to do |format|
      if @noddle.save
        format.html { redirect_to @noddle, notice: 'Noddle was successfully created.' }
        format.json { render :show, status: :created, location: @noddle }
      else
        format.html { render :new }
        format.json { render json: @noddle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noddles/1
  # PATCH/PUT /noddles/1.json
  def update
    respond_to do |format|
      if @noddle.update(noddle_params)
        format.html { redirect_to @noddle, notice: 'Noddle was successfully updated.' }
        format.json { render :show, status: :ok, location: @noddle }
      else
        format.html { render :edit }
        format.json { render json: @noddle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noddles/1
  # DELETE /noddles/1.json
  def destroy
    @noddle.destroy
    respond_to do |format|
      format.html { redirect_to noddles_url, notice: 'Noddle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noddle
      @noddle = Noddle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def noddle_params
      params.require(:noddle).permit(:title, :noddle)
    end
end
