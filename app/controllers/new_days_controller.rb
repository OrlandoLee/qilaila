class NewDaysController < ApplicationController
  before_action :set_new_day, only: [:show, :edit, :update, :destroy]

  # GET /new_days
  # GET /new_days.json
  def index
    @new_days = NewDay.all
  end

  # GET /new_days/1
  # GET /new_days/1.json
  def show
  end

  # GET /new_days/new
  def new
    @new_day = NewDay.new
  end

  # GET /new_days/1/edit
  def edit
  end

  # POST /new_days
  # POST /new_days.json
  def create
    @new_day = NewDay.new(new_day_params)

    respond_to do |format|
      if @new_day.save
        format.html { redirect_to @new_day, notice: 'New day was successfully created.' }
        format.json { render :show, status: :created, location: @new_day }
      else
        format.html { render :new }
        format.json { render json: @new_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_days/1
  # PATCH/PUT /new_days/1.json
  def update
    respond_to do |format|
      if @new_day.update(new_day_params)
        format.html { redirect_to @new_day, notice: 'New day was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_day }
      else
        format.html { render :edit }
        format.json { render json: @new_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_days/1
  # DELETE /new_days/1.json
  def destroy
    @new_day.destroy
    respond_to do |format|
      format.html { redirect_to new_days_url, notice: 'New day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_day
      @new_day = NewDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_day_params
      params.require(:new_day).permit(:comment, :date)
    end
end
