#
# Weeks controller has minimal implementation for adding weeks
#
class WeeksController < ApplicationController

  def index
    @weeks = Week.all
  end

  # GET /weeks/1
  # GET /weeks/1.json
  def show
    set_week
  end

  # GET /weeks/new
  def new
    @week = Week.new
  end


  # GET /weeks/1/edit
  def edit
    set_week
  end

  # POST /weeks
  # POST /weeks.json
  def create
    @week = Week.new(week_params)

    respond_to do |format|
      if @week.save
        format.html { redirect_to @week, notice: 'A new week was successfully created.' }
        format.json { render :show, status: :created, location: @week }
      else
        format.html { render :new }
        format.json { render json: @week.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    set_week
    respond_to do |format|
      if @week.update(week_params)
        format.html { redirect_to @week, notice: 'weeks was successfully updated.' }
        format.json { render :show, status: :ok, location: @week }
      else
        format.html { render :edit }
        format.json { render json: @week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weeks/1
  # DELETE /weeks/1.json
  def destroy
    set_week
    @week.destroy
    respond_to do |format|
      format.html { redirect_to weeks_url, notice: 'weeks was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_week
    @week = Week.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def week_params
    params.require(:week).permit(:start_date, :end_date, :theme)
  end
end
