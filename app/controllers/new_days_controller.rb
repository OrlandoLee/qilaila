class NewDaysController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_new_day, only: [:show, :edit, :update, :destroy]

  # GET /new_days
  # GET /new_days.json
  
  def choose
    
  end
  
  def index
    if current_user.nutri?
      @new_days = NewDay.where(:comment => nil).where(:date => 1.days.ago..Date.today).order(created_at: :desc)
    else
      @new_days = current_user.new_days.order(created_at: :desc)
    end
  end

  # GET /new_days/1
  # GET /new_days/1.json
  def show
    # if current_user.id != @new_day.user.id
    #       redirect_to action: :index, alert: '这个不是你的页面哦'
    #     end
  end

  # GET /new_days/new
  def new
    @new_day = NewDay.new
    @new_day.breakfast = Breakfast.new
    @new_day.lunch = Lunch.new
    @new_day.dinner = Dinner.new
    @new_day.snacks << Snack.new
    @new_day.exercise = Exercise.new
  end

  # GET /new_days/1/edit
  def edit
  end

  # POST /new_days
  # POST /new_days.json
  def create
    breakfast_images = new_day_params[:breakfast_attributes].delete(:breakfast_images)
    lunch_images = new_day_params[:lunch_attributes].delete(:lunch_images)
    dinner_images = new_day_params[:dinner_attributes].delete(:dinner_images)
    snack_images = new_day_params[:snacks_attributes]['0'].delete(:snack_images)
    exercise_images = new_day_params[:exercise_attributes].delete(:exercise_images)
    @new_day = NewDay.new(new_day_params)
    @new_day.user = current_user
    respond_to do |format|
      if @new_day.save
        if breakfast_images.present?
        breakfast_images.each do |image|
          BreakfastImage.create!(:image => image, :breakfast_id => @new_day.breakfast.id)
        end
        end
        if lunch_images.present?
        lunch_images.each do |image|
          LunchImage.create!(:image => image, :lunch_id => @new_day.lunch.id)
        end
        end
        if dinner_images.present?
        dinner_images.each do |image|
          DinnerImage.create!(:image => image, :dinner_id => @new_day.dinner.id)
        end
        end
        if snack_images.present?
        snack_images.each do |image|
          SnackImage.create!(:image => image, :snack_id => @new_day.snacks.first.id)
        end
        end
        if exercise_images.present?
        exercise_images.each do |image|
          ExerciseImage.create!(:image => image, :exercise_id => @new_day.exercise.id)
        end
        end
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
      params.require(:new_day).permit!
    end
end
