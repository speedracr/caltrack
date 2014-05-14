class MinimealsController < ApplicationController
  before_action :set_minimeal, only: [:show, :edit, :update, :destroy]

  # GET /minimeals
  # GET /minimeals.json
  def index
    @minimeals = Minimeal.all
  end

  # GET /minimeals/1
  # GET /minimeals/1.json
  def show
  end

  # GET /minimeals/new
  def new
    @minimeal = Minimeal.new
    @food = Food.all
  end

  # GET /minimeals/1/edit
  def edit
  end

  # POST /minimeals
  # POST /minimeals.json
  def create
    @minimeal = Minimeal.new(minimeal_params)
    @minimeal.user_id = current_user.id

    respond_to do |format|
      if @minimeal.save
        format.html { redirect_to @minimeal, notice: 'Minimeal was successfully created.' }
        format.json { render :show, status: :created, location: @minimeal }
      else
        format.html { render :new }
        format.json { render json: @minimeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minimeals/1
  # PATCH/PUT /minimeals/1.json
  def update
    respond_to do |format|
      if @minimeal.update(minimeal_params)
        format.html { redirect_to @minimeal, notice: 'Minimeal was successfully updated.' }
        format.json { render :show, status: :ok, location: @minimeal }
      else
        format.html { render :edit }
        format.json { render json: @minimeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minimeals/1
  # DELETE /minimeals/1.json
  def destroy
    @minimeal.destroy
    respond_to do |format|
      format.html { redirect_to minimeals_url, notice: 'Minimeal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minimeal
      @minimeal = Minimeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minimeal_params
      params.require(:minimeal).permit(:food, :grams, :user, :date)
    end
end
